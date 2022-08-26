<template>
  <div style="position: relative; background-color: rgba(204, 204, 204, 0.188)">
    <top-header/>
    <!-- 轮播图 -->
    <swiper
      ref="mySwiper"
      @mouseover.native="mouseover"
      @mouseout.native="mouseout"
      class="swiper"
      :options="swiperOption"
    >
      <swiper-slide>
        <img src="../assets/img/lb1.jpg" alt="" />
      </swiper-slide>
      <swiper-slide> <img src="../assets/img/lb2.jpg" alt="" /> </swiper-slide
      ><swiper-slide> <img src="../assets/img/lb3.jpg" alt="" /> </swiper-slide
      ><swiper-slide> <img src="../assets/img/lb4.jpg" alt="" /> </swiper-slide
      ><swiper-slide>
        <img src="../assets/img/lb5.jpg" alt="" />
      </swiper-slide>
      <div class="swiper-pagination" slot="pagination"></div>
      <div class="swiper-button-prev" slot="button-prev"></div>
      <div class="swiper-button-next" slot="button-next"></div>
    </swiper>

    <div class="el-row">
      <el-row class="tac">
        <el-col :span="12">
          <el-menu
            unique-opened
            default-active="2"
            class="el-menu-vertical-demo"
            @open="handleOpen"
            @close="handleClose"
          >
            <el-submenu index="1">
              <template slot="title" style="height: 30px">
                <span>手机</span>
              </template>
              <el-menu-item index="1-1">Mate系列</el-menu-item>
              <el-menu-item index="1-2">nova系列</el-menu-item>
            </el-submenu>
            <el-submenu index="2">
              <template slot="title">
                <span>电脑</span>
              </template>
              <el-menu-item index="2-1">MateBook系列</el-menu-item>
              <el-menu-item index="2-2">商用电脑</el-menu-item>
            </el-submenu>
            <el-submenu index="3">
              <template slot="title">
                <span>平板</span>
              </template>
              <el-menu-item index="3-1">MatePad Pro系列</el-menu-item>
              <el-menu-item index="3-2">商用平板</el-menu-item>
            </el-submenu>
            <el-submenu index="4">
              <template slot="title">
                <span>耳机</span>
              </template>
              <el-menu-item index="4-1">真无线耳机</el-menu-item>
              <el-menu-item index="4-2">有线耳机</el-menu-item>
            </el-submenu>
            <el-submenu index="5">
              <template slot="title">
                <span>家用电器</span>
              </template>
              <el-menu-item index="5-1">扫地清洁</el-menu-item>
              <el-menu-item index="5-2">空气净化器</el-menu-item>
            </el-submenu>
          </el-menu>
        </el-col>
      </el-row>
    </div>

    <!-- 新品 -->
    <div class="xinpin">
      <div>
        <img src="../assets/img/xinpin1.jpg" alt="" />
      </div>
      <div>
        <img src="../assets/img/xinpin2.jpg" alt="" />
      </div>
      <div>
        <img src="../assets/img/xinpin3.jpg" alt="" />
      </div>
      <div>
        <img src="../assets/img/xinpin4.jpg" alt="" />
      </div>
    </div>

    <!-- 爆款推荐 -->
    <my-shopping/>

    <!-- 首页模板 -->
    <home-module/>

    <!-- 猜你喜歡 -->
    <my-like/>


    <!-- 侧边回到顶部 -->
    <div>
      <div></div>
    </div>
    <my-footer/>
  </div>
</template>

<script>
import MyFooter from '@/components/MyFooter.vue';
import MyShopping from '@/components/MyShopping.vue';
import HomeModule from '@/components/HomeModule.vue';
import TopHeader from '@/components/TopHeader.vue';
import MyLike from '@/components/MyLike.vue';
export default {
  components: { MyFooter, MyShopping, HomeModule, TopHeader, MyLike },
  data() {
    return {
      swiperOption: {
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        effect: "fade",
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        loop: true,
      },
      input: "",
      data: null,
    };
  },
  methods: {
    handleOpen(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath);
    },
    mouseover() {
      console.log("鼠标进入");
      console.log(this.$refs);
      this.$refs.mySwiper.$swiper.autoplay.stop();
    },
    mouseout() {
      console.log("鼠标离开");
      this.$refs.mySwiper.$swiper.autoplay.start();
    },
  },
};
</script>

<style lang="scss" scoped>
.swiper-slide img{
  user-select: none;
}
.swiper {
  width: 100%;
  margin: 5px auto;

  img {
    width: 100%;
  }

  .swiper-pagination-bullet {
    width: 14px;
    height: 14px;
  }
}
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
.tac {
  width: 400px;
}
.el-row {
  z-index: 10;
  position: absolute;
  top: 90px;
  left: 90px;
}
.xinpin {
  height: 194px;
  width: 1200px;
  display: flex;
  justify-content: space-between;
  margin: 30px auto;

  div:hover {
    box-shadow: 0 11px 11px 0 rgb(0 0 0 / 15%);
  }


  img {
    width: 291px;
    height: 100%;
    user-select: none;
  }
}
</style>