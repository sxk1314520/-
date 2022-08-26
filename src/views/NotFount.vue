<template>
  <div>
    <top-header/>
    <div id="forward">
      <img
        src="http://www.codeboy.com:9999/img/lookforward/lookforward_img1.png"
        alt=""
        class="animated bounce"
      />
      <p class="animated slideInDown">服务暂未上线 敬请期待!!</p>
    </div>
    <my-footer/>
  </div>
</template>

<script>
import MyFooter from '@/components/MyFooter.vue';
import TopHeader from '@/components/TopHeader.vue';
export default {
  components: {  MyFooter, TopHeader },};
</script>

<style lang="scss" scoped>
</style>
   <style>
#forward {
  width: 1000px;
  height: 500px;
  margin: 0px auto;
  text-align: center;
  vertical-align: middle;
}
#forward img {
  position: relative;
  top: 193px;
  user-select: none;
}
#forward p {
  font-size: 20px;
  position: relative;
  top: 218px;
  font-weight: inherit;
  opacity: 0.3;
  user-select: none;
}
</style>