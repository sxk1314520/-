<template>
  <div v-if="data">
    <top-header />
    <div class="nav-content">
      <div class="w-top">
        <p>购物车</p>
        <div class="kuai">
          <ul>
            <li>
              <input
                type="checkbox"
                :checked="isCheckAll"
                @change="chaChanged"
              />
              <span>全选</span>
            </li>
            <li>
              <span style="display: inline-block; width: 320px">商品</span>
            </li>
            <li>
              <span>单价(元)</span>
            </li>
            <li>
              <span>数量</span>
            </li>
            <li>
              <span>金额</span>
            </li>
            <li>
              <span>操作</span>
            </li>
          </ul>
        </div>
      </div>

      <div v-if="data.data">
        <div class="item" v-for="(p, i) in this.data.data" :key="i">
          <div class="thing">
            <div class="ko">
              <input
                type="checkbox"
                @click="miniChecked(i)"
                :checked="data.data[i].is_checked"
              />
            </div>
            <div class="pro">
              <img :src="data.data[i].img" alt="" />
              <div class="p-con">
                <span class="data">{{ data.data[i].hname }}</span>
                <p>内存：{{ data.data[i].cpu }}</p>
                <p>网络：4G全网通</p>
              </div>
            </div>
            <div class="price">
              <p>会员专享价</p>
              <span>￥{{ data.data[i].price }}</span>
            </div>
            <div class="num">
              <button
                @click="data.data[i].count--"
                :disabled="data.data[i].count == 1"
              >
                -
              </button>
              <input type="text" :value="data.data[i].count" />
              <button @click="data.data[i].count++">+</button>
            </div>
            <div class="total">
              <span>￥{{ data.data[i].price }}</span>
            </div>
            <div class="caozuo">
              <button @click="deleteData(i)">删除</button>
            </div>
          </div>
        </div>
      </div>
      <div v-else>
        <div id="forward">
          <img
            src="http://www.codeboy.com:9999/img/lookforward/lookforward_img1.png"
            alt=""
          />
          <p>购物车空空如也!</p>
        </div>
      </div>

      <div class="w-bot">
        <div class="kuai">
          <ul>
            <li>
              <input
                type="checkbox"
                :checked="isCheckAll"
                @change="chaChanged"
              />
              <span>全选</span>
            </li>
            <li class="total">
              <span>合计(不含运费)：{{ total }}元</span>
            </li>
            <li>
              <a href="/notfount"><button @click="deleteData(i)">去结算</button></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <my-footer />
  </div>
</template>

<script>
import MyFooter from "@/components/MyFooter.vue";
import "../assets/CSS/shoppingcart.css";
import TopHeader from "@/components/TopHeader.vue";
export default {
  components: { MyFooter, TopHeader },
  data() {
    return {
      data: [],
      i: 0,
      isCheckAll: 0,
      checked: 0,
      // okchecked: [],
    };
  },
  mounted() {
    this.getData();
  },
  methods: {
    async getData() {
      console.log(this.$route);
      const url = "http://127.0.0.1:3000/v1/cart/info";
      console.log("url:", url);
      await this.axios.get(url).then((res) => {
        this.data = res.data;
        console.log(res);
        // this.okchecked = this.data.data;
        // console.log( Array.isArray(this.data.data));
      });
    },
    deleteData(i) {
      console.log(this.$route);
      const url = "http://127.0.0.1:3000/v1/cart/" + this.data.data[i].hid;
      console.log("url:", url);
      this.axios.delete(url).then((res) => {
        // this.data = res.data;
        console.log(res);
        this.data.data.splice(i, 1);
        this.getData();
      });
    },
    addData() {
      console.log(this.$route);
      const url = "http://127.0.0.1:3000/v1/cart/add";
      console.log("url:", url);
      this.axios.get(url).then((res) => {
        this.data = res.data;
        console.log(res);
      });
    },
    chaChanged() {
      // console.log(e.target.checked)
      // console.log(this.isCheckAll)
      this.isCheckAll = !this.isCheckAll;
      // 此方法是 勾选.a[e].is_checked = e.target.checked
      if (this.isCheckAll == 1) {
        this.data.data.forEach((element) => {
          element.is_checked = 1;
        });
      } else {
        this.data.data.forEach((element) => {
          element.is_checked = 0;
        });
      }
    },

    miniChecked(i) {
      // this.checked=1;
      if (this.data.data[i].is_checked == 0) {
        this.data.data[i].is_checked = 1;
        // this.okchecked =this.data.data
        // console.log(this.data.data[i].is_checked);
        // for (var i = 0; i < this.data.data.length; i++) {
        //   if (this.data.data[i].is_checked == 1) {
        //     this.isCheckAll = 1;
        //   }
        // }
        if (this.data.data) {
          const result = this.data.data.every((i) => i.is_checked == 1);
          console.log(result);
          if (result) {
            this.isCheckAll = 1;
          }
        }
      } else {
        this.data.data[i].is_checked = 0;
        console.log(0);
        // if (this.data.data[i].is_checked == 0) {
        //   this.isCheckAll = 0;
        // }
        this.isCheckAll = 0;
      }
      // console.log(this.data.data[i].is_checked)
    },

    // handleRemove: function (i) {
    //   console.log(this.data.data);
    //   this.data.data.splice(i, 1);
    //   res.data.data = this.data.data;
    // },
  },

  computed: {
    // 不带参数的, 判断每一个都是勾选
    // a(){return this.data.data || []},
    total() {
      // var sum = 0;
      // 只累加 勾选状态是 true 的元素
      // 在乘法里, *true 转 *1    *false 转*0
      if (this.data.data) {
        return this.data.data.reduce(
          (sum, value) => sum + value.price * value.count * value.is_checked,
          0
        );
      }
      // for (var i = 0; i < this.data.data.length; i++) {
      //   sum +=
      //     this.okchecked[i].price *
      //     this.okchecked[i].count *
      //     this.okchecked[i].is_checked;
      // }

      // return sum;
    },
  },
};
</script>

<style lang="scss" scoped>
#forward {
  width: 1000px;
  height: 300px;
  margin: 0px auto;
  text-align: center;
  vertical-align: middle;
}
#forward img {
  position: relative;
  top: 93px;
  user-select: none;
}
#forward p {
  font-size: 20px;
  position: relative;
  top: 118px;
  font-weight: inherit;
  opacity: 0.3;
  user-select: none;
  font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, -apple-system,
    BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell,
    "Open Sans", "Helvetica Neue", sans-serif;
}
</style>