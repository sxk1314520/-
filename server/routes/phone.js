// 加载Express模块
const express = require('express');

//引入连接池模块
const pool=require('../pool.js')

//创建路由器对象
const r=express.Router()

//数据
r.get('/record',(req,res,next)=>{
	console.log(req.query)
    let obj=req.query
	pool.query('select * from hw_laptop',(err,r)=>{
		if(err){
			next(err);
			return;
		}
		console.log(r)
		res.send({code:200,msg:'查找成功',data:r})
	})
})

r.get('/records',(req,res,next)=>{
	// console.log(req.query)
    let obj=req.query
	pool.query('select * from hw_laptop where lid =?',[obj.lid],(err,r)=>{
		if(err){
			next(err);
			return;
		}
		console.log(r)
		res.send({code:200,msg:'查找成功',data:r})
	})
})
//暴露路由器对象
module.exports=r
