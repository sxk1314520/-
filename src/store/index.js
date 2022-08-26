import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    uname:window.sessionStorage.getItem('uname')
  },
  getters: {
  },
  mutations: {
    updateUname(state,uname){
      state.uname=uname
      window.sessionStorage.setItem('uname',uname)
    },
    logout(state){
      state.uname=''
      sessionStorage.clear()
    }
  },
  actions: {
  },
  modules: {
  }
})
