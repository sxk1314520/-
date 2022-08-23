<template>
  <div id="app">
    <router-view/>
  </div>
</template>
<script>
import "./assets/CSS/scope.css"
import MyHeader from './components/MyHeader.vue'
export default {
  components: { MyHeader },
  setup() {
    
  },
}
</script>
<style lang="scss">
</style>
