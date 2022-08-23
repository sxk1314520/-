<template>
  <div>
    <!-- 页面顶部-->
    <my-header />
    <div id="container">
      <div>
        <p style="padding: 35px">注册新的帐号</p>
      </div>
      <div>
        <input
          v-model="uname"
          type="text"
          placeholder="账号名由3-15个数字组成"
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
          placeholder="请输入六位数字的密码"
          name="upwd"
          required
          :state="pwdState"
          @blur="checkPwd"
        />
      </div>

      <br />
      <div>
        <input
          required
          type="password"
          placeholder="请再次输入密码"
          name="upwdconfirm"
          autofocus
          id="upwdconfirm"
          v-model="repwd"
          :state="repwdState"
          @blur="checkRepwd"
        />
      </div>
      <br />
      <div>
        <input
          required
          type="phone"
          placeholder="请输入手机号"
          name="phone"
          id="phone"
          v-model="phone"
          :state="phoneState"
          @blur="checkPhone"
        />
      </div>
      <br />
      <input
        @click="checkForm"
        class="button_login"
        type="button"
        value="注册"
        id="bt-login"
      />
      <br /><br />
      <div class="modify_url">
        <a class="underline">注册说明</a>
        <a href="/login" class="login">登录</a>
      </div>
    </div>
  </div>
</template>

<script>
import MyHeader from "@/components/MyHeader.vue";
export default {
  components: { MyHeader },
  data() {
    return {
      uname: "",
      unameState: "",
      pwd: "",
      pwdState: "",
      repwd: "",
      repwdState: "",
      phone: "",
      phoneState: "",
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
    checkRepwd() {
      let exp = /^\d{6}$/;
      if (exp.test(this.repwd) && this.pwd === this.repwd) {
        this.repwdState = "success";
        return true;
      } else {
        this.repwdState = "error";
        return false;
      }
    },
    checkPhone(){
      let exp = /^1[3-9][0-9]{9}$/;
      if (exp.test(this.phone)) {
        this.phoneState = "success";
        return true;
      } else {
        this.phoneState = "error";
        return false;
      }
    },
    checkForm() {
      const {uname,pwd,rePwd,phone}=this
      const url='http://127.0.0.1:3000/v1/users/reg'
      const params=`uname=${uname}&pwd=${pwd}&phone=${phone}`
      console.log("params:",params)

      this.axios.post(url,params).then(res=>{
        console.log(res)
        if (this.checkName() && this.checkPwd() && this.checkRepwd() && this.checkPhone()) {
        console.log("验证成功",res);
        this.$router.push("/login");
      } else {
        console.log("验证失败");
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
#upwd,
#upwdconfirm,
#phone {
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

  .underline {
    text-decoration: none !important;
    color: #007dff !important;
    float: left;
  }

  .login {
    float: right;
    color: #007dff;
    cursor: pointer;
    text-decoration: none;
  }
}
</style>