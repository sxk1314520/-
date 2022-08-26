<template>
  <div>
    <top-header />

    <div class="search-container">
      <img src="../../public/image/datu.png" alt="" />
      <div class="search-all">全部商品内容</div>
      <div v-if="data" class="sdata">
        <div class="dange" v-for="(p, i) in data.data" :key="i" @click="dange(i)">
          <a>
            <div class="module_photo">
              <img :src="data.data[i].img" alt="" /></div
          ></a>
          <div class="module_bottom">
            <div class="module_one">
              <div class="typeface">{{ data.data[i].lname }}</div>
              <div class="introduce">{{ data.data[i].xianshi }}</div>
            </div>
            <div class="module_two">
              <div class="original_price">￥{{ data.data[i].price }}</div>
              <div class="present_price">￥{{ data.data[i].yuanjia }}</div>
            </div>
          </div>
        </div>
      </div>
      <div class="search-p">
        <p class="p1">&nbsp;&nbsp;商家公告</p>
        <p class="p2">
          本店欢迎您的光临，同时感谢新老客户的支持与喜爱。本店货源充足，活动不断、新品不断，质优价廉，欢迎并建议亲们多多对比，同等质量比价格，同等价位比质量。
        </p>
        <p class="p2">
          有任何问题或对本店有任何建议或意见，欢迎与我们联系，我们恭候您的到来并竭诚为您服务！选择我们，选择放心！在此，我们祝您选购愉快！
        </p>
      </div>
    </div>

    <my-footer />
  </div>
</template>

<script>
import TopHeader from "@/components/TopHeader.vue";
import MyFooter from "@/components/MyFooter.vue";
export default {
  components: { TopHeader, MyFooter },
  data() {
    return {
      data: null,
      i:1
    };
  },
  mounted() {
    this.addData();
    if (this.tltle != this.title) {
      location.reload();
    }
  },
  watch: {
    nowLid() {
      this.addData();
    },
    "$route.query.title"() {
      // console.log('监听成功')
      this.addData();
    },
  },
  methods: {
    addData() {
      let title = this.$route.query.title;
      console.log(title);
      const url = "http://127.0.0.1:3000/v1/phone/searchpro?title=" + title;
      console.log("url:", url);
      this.axios.get(url).then((res) => {
        this.data = res.data;
        console.log("res", res);
      });
    },
    dange(i){
      this.$router.push('/productdetails?lid='+(i+1))
    }
  },
};
</script>

<style scoped src="../assets/CSS/search.css">
</style>