<template>
  <div v-if="data">
    <!-- 爆款推荐 -->
    <div class="module">
      <div class="explosion">
        <div>手机</div>
      </div>
      <div class="mokuai">
        <div class="dange" @click="goDetail(data.data[0].lid)">
          <a >
            <div class="module_photo">
              <img :src="data.data[0].img" alt="" /></div
          ></a>
          <div class="module_bottom">
            <div class="module_one">
              <div class="typeface">{{ data.data[0].lname }}</div>
              <div class="introduce">{{ data.data[0].xianshi }}</div>
            </div>
            <div class="module_two">
              <div class="original_price">￥{{ data.data[0].price }}</div>
              <div class="present_price">￥{{ data.data[0].yuanjia }}</div>
            </div>
            <div class="module_three">
              <div class="original">{{ data.data[0].xianshi }}</div>
              <div class="original">限时赠</div>
              <div class="original">赠积分</div>
            </div>
          </div>
        </div>
         <div class="dange" @click="goDetail(data.data[1].lid)">
          <a>
            <div class="module_photo">
              <img :src="data.data[1].img" alt="" /></div
          ></a>
          <div class="module_bottom">
            <div class="module_one">
              <div class="typeface">{{ data.data[1].lname }}</div>
              <div class="introduce">{{ data.data[1].xianshi }}</div>
            </div>
            <div class="module_two">
              <div class="original_price">￥{{ data.data[1].price }}</div>
              <div class="present_price">￥{{ data.data[1].yuanjia }}</div>
            </div>
            <div class="module_three">
              <div class="original">{{ data.data[1].xianshi }}</div>
              <div class="original">限时赠</div>
              <div class="original">赠积分</div>
            </div>
          </div>
        </div>
         <div class="dange" @click="goDetail(data.data[2].lid)">
          <a>
            <div class="module_photo">
              <img :src="data.data[2].img" alt="" /></div
          ></a>
          <div class="module_bottom">
            <div class="module_one">
              <div class="typeface">{{ data.data[2].lname }}</div>
              <div class="introduce">{{ data.data[2].xianshi }}</div>
            </div>
            <div class="module_two">
              <div class="original_price">￥{{ data.data[2].price }}</div>
              <div class="present_price">￥{{ data.data[2].yuanjia }}</div>
            </div>
            <div class="module_three">
              <div class="original">{{ data.data[2].xianshi }}</div>
              <div class="original">限时赠</div>
              <div class="original">赠积分</div>
            </div>
          </div>
        </div>
         <div class="dange" @click="goDetail(data.data[3].lid)">
          <a>
            <div class="module_photo">
              <img :src="data.data[3].img" alt="" /></div
          ></a>
          <div class="module_bottom">
            <div class="module_one">
              <div class="typeface">{{ data.data[3].lname }}</div>
              <div class="introduce">{{ data.data[3].xianshi }}</div>
            </div>
            <div class="module_two">
              <div class="original_price">￥{{ data.data[3].price }}</div>
              <div class="present_price">￥{{ data.data[3].yuanjia }}</div>
            </div>
            <div class="module_three">
              <div class="original">{{ data.data[3].xianshi }}</div>
              <div class="original">限时赠</div>
              <div class="original">赠积分</div>
            </div>
          </div>
        </div>
      </div>
      <div class="mokuai">
        <div class="dange" @click="goDetail(data.data[4].lid)">
          <a>
            <div class="module_photo">
              <img :src="data.data[4].img" alt="" /></div
          ></a>
          <div class="module_bottom">
            <div class="module_one">
              <div class="typeface">{{ data.data[4].lname }}</div>
              <div class="introduce">{{ data.data[4].xianshi }}</div>
            </div>
            <div class="module_two">
              <div class="original_price">￥{{ data.data[4].price }}</div>
              <div class="present_price">￥{{ data.data[4].yuanjia }}</div>
            </div>
            <div class="module_three">
              <div class="original">{{ data.data[4].xianshi }}</div>
              <div class="original">限时赠</div>
              <div class="original">赠积分</div>
            </div>
          </div>
        </div>
         <div class="dange" @click="goDetail(data.data[5].lid)">
          <a>
            <div class="module_photo">
              <img :src="data.data[5].img" alt="" /></div
          ></a>
          <div class="module_bottom">
            <div class="module_one">
              <div class="typeface">{{ data.data[5].lname }}</div>
              <div class="introduce">{{ data.data[5].xianshi }}</div>
            </div>
            <div class="module_two">
              <div class="original_price">￥{{ data.data[5].price }}</div>
              <div class="present_price">￥{{ data.data[5].yuanjia }}</div>
            </div>
            <div class="module_three">
              <div class="original">{{ data.data[5].xianshi }}</div>
              <div class="original">限时赠</div>
              <div class="original">赠积分</div>
            </div>
          </div>
        </div>
         <div class="dange" @click="goDetail(data.data[6].lid)">
          <a>
            <div class="module_photo">
              <img :src="data.data[6].img" alt="" /></div
          ></a>
          <div class="module_bottom">
            <div class="module_one">
              <div class="typeface">{{ data.data[6].lname }}</div>
              <div class="introduce">{{ data.data[6].xianshi }}</div>
            </div>
            <div class="module_two">
              <div class="original_price">￥{{ data.data[6].price }}</div>
              <div class="present_price">￥{{ data.data[6].yuanjia }}</div>
            </div>
            <div class="module_three">
              <div class="original">{{ data.data[6].xianshi }}</div>
              <div class="original">限时赠</div>
              <div class="original">赠积分</div>
            </div>
          </div>
        </div>
         <div class="dange" @click="goDetail(data.data[7].lid)">
          <a>
            <div class="module_photo">
              <img :src="data.data[7].img" alt="" /></div
          ></a>
          <div class="module_bottom">
            <div class="module_one">
              <div class="typeface">{{ data.data[7].lname }}</div>
              <div class="introduce">{{ data.data[7].xianshi }}</div>
            </div>
            <div class="module_two">
              <div class="original_price">￥{{ data.data[7].price }}</div>
              <div class="present_price">￥{{ data.data[7].yuanjia }}</div>
            </div>
            <div class="module_three">
              <div class="original">{{ data.data[7].xianshi }}</div>
              <div class="original">限时赠</div>
              <div class="original">赠积分</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      data: null,
    };
  },
  mounted() {
    this.getData();
  },
  watch: {
    nowLid() {
      this.getData();
    },
  },
  methods: {
    goDetail(index){
      this.$router.push(`/productdetails?lid=${index}`)
    },
    getData() {
      console.log(this.$route);
      const url =
        "http://127.0.0.1:3000/v1/phone/record";
      console.log("url:", url);
      this.axios.get(url).then((res) => {
        this.data = res.data;
        console.log(res);
      });
    },
  },
};
</script>

<style lang="scss" scoped>
.module {
  margin-top: 24.01px;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  margin-right: auto;
  margin-left: auto;
  width: 100%;
  max-width: 1200px;
  margin-bottom: 35px;

  .explosion {
    margin-bottom: 15px;

    & div {
      font-size: 24px;
    }
  }

  .mokuai {
    -webkit-box-align: stretch;
    -webkit-box-direction: normal;
    -webkit-box-orient: vertical;
    align-items: stretch;
    border: 0px solid black;
    box-sizing: border-box;
    display: flex;
    flex-basis: auto;
    flex-direction: column;
    flex-shrink: 0;
    margin: 0px;
    min-height: 0px;
    min-width: 0px;
    padding: 0px;
    position: relative;
    z-index: 0;
    padding-right: 0px;
    padding-left: 0px;
    overflow: visible;
    margin-top: -12px;
    margin-left: -12px;
    -webkit-box-direction: normal;
    -webkit-box-orient: horizontal;
    flex-direction: row;
    margin-bottom: 12px;

    .dange {
      max-width: 291px;
      transition-duration: 0.25s;
      width: 291px;
      height: 387px;
      background-color: rgb(255, 255, 255);
      transition-property: opacity;
      touch-action: manipulation;
      cursor: pointer;
      margin-left: 12px;
      -webkit-box-pack: center;
      justify-content: center;
      margin-top: 12px;
      -webkit-box-align: center;
      align-items: center;
    }

    .module_photo {
      height: 253.927px;
      border-top-right-radius: 0px;
      border-top-left-radius: 0px;
      position: relative;
      width: 100%;

      img {
        -webkit-user-drag: none;
        cursor: pointer;
        user-select: none;
        height: 72%;
        width: 62%;
        padding-top: 5px;
        padding-bottom: 5px;
        position: relative;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
      }
    }

    .module_bottom {
      padding-bottom: 36px;
      padding-top: 10px;
      padding-right: 24px;
      padding-left: 24px;
      border-bottom-right-radius: 8px;
      border-bottom-left-radius: 8px;
      text-align: center;

      .module_one {
        -webkit-box-align: stretch;
        -webkit-box-direction: normal;
        -webkit-box-orient: vertical;
        align-items: stretch;
        border: 0px solid black;
        box-sizing: border-box;
        display: flex;
        flex-basis: auto;
        flex-direction: column;
        flex-shrink: 0;
        min-height: 0px;
        min-width: 0px;
        position: relative;
        z-index: 0;

        .typeface {
          word-break: break-all;
          opacity: 0.9;
          height: 19px;
          line-height: 19px;
          color: rgb(0, 0, 0);
          font-size: 14px;
          -webkit-box-pack: center;
          justify-content: center;
          font-weight: 600;
          text-align: center;
          position: relative;
          max-width: 100%;
          overflow: hidden;
          text-overflow: ellipsis;
          white-space: nowrap;
        }

        .introduce {
          word-break: break-all;
          line-height: 18px;
          height: 18px;
          font-size: 13px;
          margin-top: 8px;
          opacity: 0.5;
          font-weight: 400;
          color: rgb(0, 0, 0);
          -webkit-box-pack: center;
          justify-content: center;
          max-width: 100%;
          overflow: hidden;
          text-overflow: ellipsis;
          white-space: nowrap;
        }
      }

      .module_two {
        margin-top: 16px;
        padding-top: 1px;
        padding-bottom: 1px;
        height: 21px;
        -webkit-box-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-direction: normal;
        -webkit-box-orient: horizontal;
        flex-direction: row;
        user-select: none;
        border: 0px solid black;
        box-sizing: border-box;
        display: flex;
        flex-basis: auto;
        flex-shrink: 0;
        min-height: 0px;
        min-width: 0px;
        position: relative;
        z-index: 0;

        .original_price {
          margin-right: 4px;
          line-height: 21px;
          opacity: 1;
          color: rgb(207, 10, 44);
          font-weight: 400;
          font-size: 16px;
        }

        .present_price {
          line-height: 14px;
          text-decoration-line: line-through;
          opacity: 0.5;
          color: rgb(0, 0, 0);
          font-size: 12px;
        }
      }

      .module_three {
        padding-right: 0.5px;
        height: 18px;
        margin-top: 8px;
        -webkit-box-pack: center;
        justify-content: center;
        flex-wrap: wrap;
        width: 100%;
        -webkit-box-direction: normal;
        -webkit-box-orient: horizontal;
        flex-direction: row;
        overflow: hidden;
        -webkit-box-align: stretch;
        align-items: stretch;
        border: 0px solid black;
        box-sizing: border-box;
        display: flex;
        flex-basis: auto;
        flex-shrink: 0;
        min-height: 0px;
        min-width: 0px;
        position: relative;
        z-index: 0;

        .original {
          margin-left: 0px;
          max-width: 100%;
          padding-top: 0px;
          padding-right: 4px;
          padding-left: 4px;
          vertical-align: middle;
          height: 16px;
          opacity: 1;
          color: rgb(207, 10, 44);
          font-weight: 400;
          line-height: 16px;
          text-align: center;
          font-size: 12px;
          border-width: 1px;
          border-style: solid;
          border-color: rgba(207, 10, 44, 0.4);
          border-radius: 4px;
          overflow: hidden;
          text-overflow: ellipsis;
          white-space: nowrap;
        }
      }
    }
  }
}
</style>