<template>
  <div>
    <top-header />

    <div class="about">
      <div class="aboutl" id="container">
        <div class="amap-wrapper">
          <el-amap
            class="amap-box"
            vid="amap-vue"
            :zoom="zoom"
            :center="center"
          ></el-amap>
        </div>
      </div>
      <div class="aboutr">
        <h1>关于我们</h1>
        <p class="p0">
          <span class="p1">官方邮箱</span>
          <span class="p2">feedback@douyin.com</span>
        </p>
        <p class="p0">
          <span class="p1">侵权举报</span>
          <span class="p2">400-140-2108</span>
        </p>
        <p class="p0">
          <span class="p1">广告投放</span>
          <span class="p2">www.oceanengine.com</span>
        </p>
        <p class="p0">
          <span class="p1">市场合作</span>
          <span class="p2">bd@douyin.com</span>
        </p>
        <p class="p0">
          <span class="p1">青少年守护专线</span>
          <span class="p2">400-9922-556</span>
        </p>
      </div>
    </div>

    <my-footer />
  </div>
</template>
<script type="text/javascript">
window._AMapSecurityConfig = {
  securityJsCode: "5fee379c9a5fdef0a02feb6302fadfe9",
};
</script>
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=2.0&key=cc18e8b74f8ef931409f73973925b124">
</script>
<script>
import TopHeader from "@/components/TopHeader.vue";
import MyFooter from "@/components/MyFooter.vue";
export default {
  components: { TopHeader, MyFooter },
  name: "App",
  data() {
    return {
      zoom: 12,
      center: [113.271946, 40.060701],
    };
  },
};
</script>

<style scoped src="../assets/CSS/about.css">
</style>