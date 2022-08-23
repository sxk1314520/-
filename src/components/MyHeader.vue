<template>
  <div class="my-header">
    <header id="top">
      <div class="top">
        <router-link to="/">
          <img
            src="https://uniportal.huawei.com/uniportal/images/huawei_logo.png?version=2.0"
            alt="logo"
            border="0"
          />
        </router-link>
        <span>帮助</span>
        <span>联系我们</span>
      </div>
    </header>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
#top {
  margin: 0 auto;
  height: 27px;
  padding: 11px 8.3% 10px;
  background: #000000;

  img {
    width: 120px;
  }
  span {
    color: #ffffff;
    padding: 0 5px 0 0;
    float: right;
    font-size: 12px;
    letter-spacing: 0;
    font-family: PingFangSC-Regular;
  }
}
</style>