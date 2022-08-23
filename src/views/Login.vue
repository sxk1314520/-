<template>
  <div>
    <!-- 页面顶部-->
   <my-header/>
    <div id="container">
      <div>
        <p style="padding:35px;">Uniportal帐号登录</p>
      </div>
      <div>
        <input
          v-model="uname"
          type="text"
          placeholder="Uniportal帐号/W3帐号"
          name="uname"
          id="uname"
          required
          autofocus
          :state="unameState"
          @blur="checkName"
        />
      </div>
      <br />
      <div>
        <input
          v-model="pwd"
          type="password"
          id="upwd"
          placeholder="密码"
          name="upwd"
          required
          minlength="6"
          maxlength="15"
          :state="pwdState"
          @blur="checkPwd"
        />
      </div>
      <br />
      <input
        @click="checkForm"
        class="button_login"
        type="button"
        value="登录"
        id="bt-login"
      />
      <br /><br />
      <div class="modify_url">
        <a href="/register" class="register">立即注册</a>
        <a class="underline">忘记密码</a>
      </div>
    </div>
  </div>
</template>

<script>
import MyHeader from '@/components/MyHeader.vue';
export default {
  components: { MyHeader },
  data() {
    return {
      uname: "",
      unameState: "",
      pwd: "",
      pwdState: "",
    };
  },
  methods: {
    checkName() {
      let exp = /^\w{3,15}$/;
      if (exp.test(this.uname)) {
        this.unameState = "success";
        return true;
      } else {
        this.unameState = "error";
        return false;
      }
    },
    checkPwd() {
      let exp = /^\d{6}$/;
      if (exp.test(this.pwd)) {
        this.pwdState = "success";
        return true;
      } else {
        this.pwdState = "error";
        return false;
      }
    },
    checkForm() {
      console.log(this.uname,this.pwd)
      const url='http://127.0.0.1:3000/v1/users/login'
      const params=`uname=${this.uname}&pwd=${this.pwd}`
      this.axios.post(url,params).then(res=>{
        console.log(res)
        if(res.data.code==200){
          this.$store.commit('updateUname',this.uname)
          this.$router.push('/')
        }else{
          alert('登录失败')
        }
      })
    },
  },
};
</script>

<style lang="scss">
#container {
  text-align: center;
  padding-bottom: 30px;
  min-width: 950px;
  background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
  height: 89vh;
}
p {
  font-family: PingFangSC-Semibold;
  font-size: 32px;
  color: #000000;
  height: 36px;
  line-height: 36px;
  font-weight: 600;

  text-align: center;
}

#uname,
#upwd {
  width: 375px;
  height: 46px;
  line-height: 30px;
  /* float: left; */
  display: inline;
  padding-left: 16px;
  padding-right: 39px;
  border-radius: 4px;
  font-family: PingFangSC-Regular;
  font-size: 14px;
  color: #000000;
  border: 0;
}
.button_login {
  text-align: center;
  line-height: 29px;
  height: 48px;
  width: 432px;
  cursor: pointer;
  border: 0 none;
  font-size: 16px;
  background: #f66f6a;
  border-radius: 4px;
  font-family: PingFangSC-Medium;
  font-size: 18px;
  color: #ffffff;
  margin-top: 11px;
}
.modify_url {
  font-family: PingFangSC-Regular;
  font-size: 14px;
  text-align: center;
  line-height: 14px;
  letter-spacing: 0;
  height: 19px;
  line-height: 19px;
  margin-top: 20px;
  width: 432px;
  margin: 0 auto;

  .register {
    float: left;
    color: #007dff;
    cursor: pointer;
    text-decoration: none;
  }

  .underline {
    margin-left: 20px;
    text-decoration: none !important;
    color: #007dff !important;
    float: right;
  }
}
</style>