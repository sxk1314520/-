<template>
  <div>
    <!-- top -->
    <div class="top-nav">
      <div class="top-nav-height">
        <div class="container">
          <div class="pull-left">
            <a href="/">首页</a>
            <a href="/">华为官网</a>
            <a href="/">花粉俱乐部</a>
          </div>
          <div class="pull-right">
            <!-- <div>
              <a href="">客服</a>
              <p class="customer">电话：13652356200</p>
            </div> -->
            <a href="#">
              <span
                ><svg
                  t="1660137952396"
                  class="icon"
                  viewBox="0 0 1024 1024"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  p-id="5369"
                  width="9"
                  height="9"
                >
                  <path
                    d="M155 459.9h319.9V140c0-30.4-24.7-55.1-55.1-55.1H155c-30.4 0-55.1 24.7-55.1 55.1v264.8c0 30.4 24.7 55.1 55.1 55.1z m-11.1-320c0-6 5.1-11.1 11.1-11.1l264.9 0.1c6 0 11.1 5.1 11.1 11.1v275.8H155c-6 0-11.1-5.1-11.1-11.1V139.9zM875 84.9H610.2c-30.4 0-55.1 24.7-55.1 55.1v319.9H875c30.4 0 55.1-24.7 55.1-55.1V140c0-30.4-24.7-55.1-55.1-55.1z m11.1 319.9c0 6-5.1 11.1-11.1 11.1H599.1V140c0-6 5.1-11.1 11.1-11.1H875c6 0 11.1 5.1 11.1 11.1v264.8zM99.9 595.1V860c0 30.4 24.7 55.1 55.1 55.1h264.9c30.3 0 55.1-24.8 55.1-55.1V540H155c-30.4 0-55.1 24.7-55.1 55.1z m331 264.9c0 6-5.1 11.1-11.1 11.1H155c-6 0-11.1-5.1-11.1-11.1V595.1c0-6 5.1-11.1 11.1-11.1h275.9v276zM875 540H555.1v320c0 30.4 24.7 55.1 55.1 55.1H875c30.4 0 55.1-24.8 55.1-55.1V595.1c0-30.4-24.7-55.1-55.1-55.1z m11.1 320c0 6-5.1 11.1-11.1 11.1H610.2c-6 0-11.1-5.1-11.1-11.1V584H875c6 0 11.1 5.1 11.1 11.1V860z"
                    p-id="5370"
                    fill="#dbdbdb"
                  ></path></svg
              ></span>
              <span class="text"> 网站导航 </span>=
              <span class="iconfont icon-arrow-down hidden-xs hidden-sm"
                ><svg
                  t="1660137787167"
                  class="icon"
                  viewBox="0 0 1024 1024"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  p-id="3503"
                  width="12"
                  height="12"
                >
                  <path
                    d="M966.4 668.8l-435.2-432c-9.6-9.6-25.6-9.6-35.2 0l-441.6 432c-9.6 9.6-9.6 25.6 0 35.2 9.6 9.6 25.6 9.6 35.2 0l425.6-416 416 416c9.6 9.6 25.6 9.6 35.2 0S976 678.4 966.4 668.8z"
                    p-id="3504"
                  ></path></svg
              ></span>
              <span class="iconfont icon-arrow-right hidden-md hidden-lg"
                ><svg
                  t="1660137855996"
                  class="icon"
                  viewBox="0 0 1024 1024"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  p-id="4482"
                  width="12"
                  height="12"
                >
                  <path
                    d="M966.4 323.2c-9.6-9.6-25.6-9.6-35.2 0l-416 416-425.6-416c-9.6-9.6-25.6-9.6-35.2 0-9.6 9.6-9.6 25.6 0 35.2l441.6 432c9.6 9.6 25.6 9.6 35.2 0l435.2-432C976 345.6 976 332.8 966.4 323.2z"
                    p-id="4483"
                  ></path></svg
              ></span>
            </a>
            <a v-if="$store.state.uname"
              >欢迎：{{ $store.state.uname }}&nbsp;&nbsp;&nbsp;&nbsp;<button
                @click="$store.commit('updateUname')"
                class="a_button"
              >
                退出
              </button></a
            >
            <template v-else>
              <a href="/login">
                <span>
                  <svg
                    t="1660136512479"
                    class="icon"
                    viewBox="0 0 1024 1024"
                    version="1.1"
                    xmlns="http://www.w3.org/2000/svg"
                    p-id="2288"
                    width="11"
                    height="11"
                  >
                    <path
                      d="M512 590.75c-142.5 0-258.75-116.25-258.75-258.75s116.25-262.5 258.75-262.5 258.75 116.25 258.75 258.75-116.25 262.5-258.75 262.5zM512 144.5c-101.25 0-183.75 82.5-183.75 183.75s82.5 183.75 183.75 183.75 183.75-82.5 183.75-183.75-82.5-183.75-183.75-183.75z"
                      p-id="2289"
                      fill="#e6e6e6"
                    ></path>
                    <path
                      d="M170.75 950.75c-18.75 0-37.5-15-37.5-37.5 0-7.5 0-11.25 0-15 0-210 172.5-382.5 382.5-382.5 22.5 0 37.5 15 37.5 37.5s-15 37.5-37.5 37.5c-168.75 0-307.5 138.75-307.5 307.5v11.25c0 22.5-18.75 41.25-37.5 41.25v0z"
                      p-id="2290"
                      fill="#e6e6e6"
                    ></path>
                    <path
                      d="M853.25 947v0c-22.5 0-37.5-15-37.5-37.5v-11.25c0-168.75-138.75-307.5-307.5-307.5-22.5 0-37.5-15-37.5-37.5s15-37.5 37.5-37.5c210 0 382.5 172.5 382.5 382.5 0 3.75 0 7.5 0 11.25 0 22.5-15 37.5-37.5 37.5z"
                      p-id="2291"
                      fill="#e6e6e6"
                    ></path>
                  </svg>
                </span>

                <span class="text"> 登录 </span>
              </a>
              <a href="/register">注册</a>
            </template>

            <a href="/notfount">我的订单</a>
            <a href="/shoppingcart">
              <svg
                t="1660220089024"
                class="icon"
                viewBox="0 0 1028 1024"
                version="1.1"
                xmlns="http://www.w3.org/2000/svg"
                p-id="2056"
                width="11"
                height="11"
              >
                <path
                  d="M332.8 790.528q19.456 0 36.864 7.168t30.208 19.968 20.48 30.208 7.68 36.864-7.68 36.864-20.48 30.208-30.208 20.48-36.864 7.68q-20.48 0-37.888-7.68t-30.208-20.48-20.48-30.208-7.68-36.864 7.68-36.864 20.48-30.208 30.208-19.968 37.888-7.168zM758.784 792.576q19.456 0 37.376 7.168t30.72 19.968 20.48 30.208 7.68 36.864-7.68 36.864-20.48 30.208-30.72 20.48-37.376 7.68-36.864-7.68-30.208-20.48-20.48-30.208-7.68-36.864 7.68-36.864 20.48-30.208 30.208-19.968 36.864-7.168zM930.816 210.944q28.672 0 44.544 7.68t22.528 18.944 6.144 24.064-3.584 22.016-13.312 37.888-22.016 62.976-23.552 68.096-18.944 53.248q-13.312 40.96-33.28 56.832t-49.664 15.872l-35.84 0-65.536 0-86.016 0-96.256 0-253.952 0 14.336 92.16 517.12 0q49.152 0 49.152 41.984 0 20.48-9.728 35.84t-38.4 14.336l-49.152 0-94.208 0-118.784 0-119.808 0-99.328 0-55.296 0q-20.48 0-34.304-9.216t-23.04-24.064-14.848-32.256-8.704-32.768q-1.024-6.144-5.632-29.696t-11.264-58.88-14.848-78.848-16.384-87.552q-19.456-103.424-44.032-230.4l-76.8 0q-15.36 0-25.6-7.68t-16.896-18.432-9.216-23.04-2.56-22.528q0-20.48 13.824-33.792t37.376-12.288l103.424 0q20.48 0 32.768 6.144t19.456 15.36 10.24 18.944 5.12 16.896q2.048 8.192 4.096 23.04t4.096 30.208q3.072 18.432 6.144 38.912l700.416 0zM892.928 302.08l-641.024-2.048 35.84 185.344 535.552 1.024z"
                  p-id="2057"
                  fill="#cdcdcd"
                ></path>
              </svg>
              购物车</a
            >
          </div>
        </div>
      </div>
    </div>
    <!-- header-->
    <nav class="nav">
      <div class="w">
        <div class="dropdown">
          <img
            src="https://res.vmallres.com/portal/1.11.6.303/h5/images/logo_app_apk.png"
            alt=""
          />
        </div>
        <div class="navitems">
          <ul>
            <li><a href="/">华为专区</a></li>
            <li><a href="/">鸿蒙智联</a></li>
            <li><a href="/">莫塞尔</a></li>
            <li><a href="/">华为智选</a></li>
            <li><a href="/">HarmonyOS</a></li>
            <li><a href="/">特惠企采</a></li>
            <li><a href="/about">关于我们</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <div>
      <el-input
        v-model="input"
        placeholder="搜索商品"
        class="el-input"
      ></el-input
      ><a @click="search">
        <el-button icon="el-icon-search" circle></el-button
      ></a>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      input: "",
    };
  },
  methods: {
    search() {
      console.log(this.input)
      this.$router.push('/mysearch?title='+this.input)
    }
  },
};
</script>

<style lang="scss" scoped>
.top-nav .top-nav-height {
  height: 25px;
  position: static;
  text-align: right;
  background-color: #111111;
  // .customer {
  //   display: none;
  // }
  // .pull-right > div > a:hover p {
  //   display: block;
  // }

  .pull-right a {
    height: 25px;
    line-height: 25px;
    margin-left: 10px;
    margin-right: 0;
    font-size: 12px;
    color: #ccc;
    width: auto;
    padding: 0 10px;
  }

  .pull-left > a {
    float: left;
    height: 25px;
    line-height: 25px;
    margin-left: 10px;
    margin-right: 0;
    font-size: 12px;
    color: #ccc;
    width: auto;
    padding: 0 10px;
  }
  .container {
    margin-right: auto;
    margin-left: auto;
    padding-left: 15px;
    padding-right: 15px;
  }
}
.w {
  width: 1200px;
  margin: 0 auto;
}
.nav {
  height: 47px;
  border-bottom: 2px solid #d2c9c97e;
  background-color: rgba(204, 204, 204, 0.088);
}
.nav .dropdown {
  float: left;
  width: 210px;
  height: 45px;

  img {
    width: 80px;
  }
}
.nav .navitems {
  float: left;
}
.navitems ul li {
  float: left;
  list-style: none;
}
.navitems ul li:hover {
  background-color: #ddddddb7;
  border-bottom: 3px solid red;
}
.navitems ul li a {
  display: block;
  height: 45px;
  line-height: 45px;
  font-size: 16px;
  padding: 0 25px;
  color: black;
}
.el-input {
  padding-left: 900px;
  width: 500px;
  padding-top: 10px;
}
.a_button {
  background-color: #111111;
  font-size: 12px;
  color: #ccc;
  width: auto;
}
</style>