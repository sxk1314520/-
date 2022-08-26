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

// 模糊查询
//地址：http://127.0.0.1:3000/v1/phone/searchpro
r.get('/searchpro',(req,res,next)=>{
	var obj=req.query.title
	var title='%'+obj+'%'
	pool.query('select * from hw_laptop where title like ?',[title],(err,r)=>{
	 if(err){
	  next(err);
	  return
	 }
	 if(r.length===0){
	  res.send({code:501,msg:'查询失败'});
	 }else{
	  res.send({code:200,msg:'查询成功',data:r})
	 }
  })
})
//暴露路由器对象
module.exports=r
