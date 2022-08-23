<template>
  <div>
    <!-- 爆款推荐 -->
    <div class="louceng">
      <div class="explosion">
        <div>爆款推荐</div>
      </div>
      <div class="tuceng">
        <div class="bk-first">
          <img src="../assets/img/baokuan1.png" alt="" />
        </div>
        <div class="bk-bianli" @click="goDetail">
          <div class="cengci">
            <div class="bk-top">
              <img :src="data.data[0].p_img" alt="" />
            </div>
            <div class="bk-bottom">
              <div class="model">
                <div class="xpss">
                  <span>{{data.data[0].list?'新品上市':'旧品'}}</span>
                </div>
                <span class="xilie">{{data.data[0].model}}</span>
              </div>
              <div class="price">
                <div class="money">￥{{data.data[0].price}}</div>
              </div>
            </div>
          </div>
        </div>
        <div class="bk-bianli"  v-for="i in 7" :key="i"  @click="goDetails(i+1)">
          <div class="cengci">
            <div class="bk-top">
              <img :src="data.data[i].p_img" alt="" />
            </div>
            <div class="bk-bottom">
              <div class="model">
                <div class="xpss">
                  <span>{{data.data[i].list?'新品上市':'旧品'}}</span>
                </div>
                <span class="xilie">{{data.data[i].model}}</span>
              </div>
              <div class="price">
                <div class="money">￥{{data.data[i].price}}</div>
              </div>
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
    goDetail(){
      this.$router.push('/productdetails?lid=1')
    },
    goDetails(i){
      this.$router.push('/productdetails?lid='+i)
    },
    getData() {
      console.log(this.$route);
      const url = "http://127.0.0.1:3000/v1/popular/explosion";
      console.log("bkurl:", url);
      this.axios.get(url).then((res) => {
        this.data = res.data;
        console.log('sj',res);
      });
    },
  },
};
</script>

<style lang="scss" scoped>
.louceng {
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

  .tuceng {
    flex-wrap: wrap;
    -webkit-box-direction: normal;
    -webkit-box-orient: horizontal;
    flex-direction: row;
    -webkit-box-flex: 1;
    flex-grow: 1;
    -webkit-box-align: stretch;
    align-items: stretch;
    border: 0px solid black;
    box-sizing: border-box;
    display: flex;
    flex-basis: auto;
    flex-shrink: 0;
    margin: 0px;
    min-height: 0px;
    min-width: 0px;
    padding: 0px;
    position: relative;
    z-index: 0;
    margin-top: -12px;
    margin-left: -12px;

    .bk-first {
      -webkit-box-align: center;
      align-items: center;
      -webkit-box-direction: normal;
      -webkit-box-orient: vertical;
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
      padding-left: 12px;
      width: 484.8px;
      margin-top: 12px;

      & img {
        height: 100%;
        width: 100%;
      }
    }

    .bk-bianli {
      -webkit-box-align: center;
      align-items: center;
      -webkit-box-direction: normal;
      -webkit-box-orient: vertical;
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
      width: 242.4px;
      padding-left: 12px;
      margin-top: 12px;

      .cengci {
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        height: 305.445px;
        max-width: 230px;
        transition-duration: 0s;
        width: 230px;
        touch-action: manipulation;
        cursor: pointer;
        user-select: none;
        transition-property: opacity;
        flex-grow: 1;
        background-color: rgb(255, 255, 255);
        border-radius: 0px;
        overflow: hidden;
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

        .bk-top {
          height: 200.698px;
          -webkit-box-pack: center;
          justify-content: center;
          position: relative;
          width: 100%;
          -webkit-box-align: center;
          align-items: center;
          overflow: hidden;

          & img {
            inset: 0px;
            height: 150px;
            position: absolute;
            width: 160px;
            z-index: -1;
            margin: 0 auto;
            -webkit-user-drag: none;
          }
        }

        .bk-bottom {
          padding-bottom: 0px;
          padding-right: 24px;
          padding-left: 24px;
          border-bottom-right-radius: 8px;
          border-bottom-left-radius: 8px;
          padding-top: 8px;
          text-align: center;

          .model {
            word-break: break-all;
            opacity: 0.9;
            height: 19px;
            line-height: 19px;
            font-size: 14px;
            color: rgb(0, 0, 0);
            -webkit-box-pack: center;
            justify-content: center;
            font-weight: 600;
            text-align: center;
            position: relative;
            max-width: 100%;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            border: 0px solid black;
            box-sizing: border-box;
            display: inline;
            font: 14px -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
              Helvetica, Arial, sans-serif;
            margin: 0px;
            padding: 0px;
            overflow-wrap: break-word;

            .xpss {
              background-image: linear-gradient(
                1.5708rad,
                rgb(207, 10, 44),
                rgb(249, 42, 74)
              );
              padding-top: 0px;
              padding-right: 4px;
              padding-left: 4px;
              margin-top: -3px;
              vertical-align: middle;
              max-width: 116px;
              margin-right: 4px;
              height: 16px;
              text-align: center;
              font-size: 12px;
              -webkit-box-align: center;
              align-items: center;
              border-radius: 4px;
              display: inline-flex;
              overflow: hidden;

              span {
                white-space: pre-wrap;
                color: rgb(255, 255, 255);
                height: 15px;
                opacity: 1;
                font-weight: 400;
                line-height: 16px;
                font-size: 12px;
                width: 100%;
                overflow: hidden;
                font: inherit;
                border: 0px solid black;
                box-sizing: border-box;
                overflow-wrap: break-word;
                display: inline;
                text-align: center;
                -webkit-box-direction: normal;
              }
            }

            .xilie {
              font-family: 黑体;
              font-size: 15px;
              font-weight: bold;
              text-decoration-color: #111111;
            }
          }

          .price {
            padding-bottom: 2px;
            padding-top: 0px;
            height: 19px;
            line-height: 21px;
            margin-top: 10px;
            -webkit-box-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-direction: normal;
            -webkit-box-orient: horizontal;
            flex-direction: row;

            .money {
              margin-right: 0px;
              line-height: 21px;
              opacity: 1;
              color: rgb(207, 10, 44);
              font-weight: 400;
              font-size: 16px;
              border: 0px solid black;
              box-sizing: border-box;
              display: inline;
              font: 14px -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
                Helvetica, Arial, sans-serif;
              margin: 0px;
              padding: 0px;
              white-space: pre-wrap;
              overflow-wrap: break-word;
            }
          }
        }
      }
    }
  }
}
</style>