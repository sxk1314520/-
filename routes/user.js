// 加载Express模块
const express = require('express');

//引入连接池模块
const pool=require('../pool.js')

//创建路由器对象
const r=express.Router()

//1.用户注册接口(post /reg)
//接口地址：http://127.0.0.1:3000/v1/users/reg
//请求方式：post
r.post('/reg',(req,res,next)=>{
	//1.1获取post传递的参数
	var obj=req.body
	console.log(obj)
	//const pool=require('../pool.js')
	//1.3执行SQL命令，插入数据
	pool.query('insert into hw_user set ?',[obj],(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		res.send({code:200,msg:'注册成功'})
	})
})
//用户登录
r.post('/login',(req,res,next)=>{
	//1.1获取post传递的参数
	var obj=req.body
	console.log(obj)
	//const pool=require('../pool.js')
	//1.3执行SQL命令，找到数据
	pool.query('select * from hw_user',(err,r)=>{
		if(err){
			//如果SQL中有错误，交给下一个错误处理中间件
			next(err)
			//阻止往后执行
			return
		}
		console.log(r)
		res.send({code:200,msg:'登录成功'})
	})
})
//数据

//暴露路由器对象
module.exports=r
