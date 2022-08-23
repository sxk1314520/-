// 加载Express模块
const express = require('express');

//引入连接池模块
const pool=require('../pool.js')

//创建路由器对象
const r=express.Router()

//爆款数据
r.get('/explosion',(req,res,next)=>{
	console.log(req.query)
    let obj=req.query
	pool.query('select * from hw_popular',(err,r)=>{
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
