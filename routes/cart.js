// 加载Express模块
const express = require('express');

//引入连接池模块
const pool=require('../pool.js')

//创建路由器对象
const r=express.Router()

//数据

//1.添加购物车信息
//地址:http://127.0.0.1:3000/v1/cart/add
//请求方式:post
r.post('/add',(req,res,next)=>{
	//获得参数
	var obj=req.body
	console.log(obj)
	//将数据插入到数据库表中
	pool.query('insert into hw_shoppingcart_item set ?',[obj],(err,r)=>{
		if(err){
			next(err);
			return;
		}
		console.log(r);
		//执行成功再响应
		res.send({code:200,msg:'数据添加成功',data:r})
	})
});
//2.查找数据接口
//地址:http://127.0.0.1:3000/v1/cart/info
//请求方式get
r.get('/info',(req,res,next)=>{
	// var obj=req.params;
	console.log(req.params)
	pool.query('select * from hw_shoppingcart_item',(err,r)=>{
		if(err){
			next(err);
			return;
		}
		if(r.length===0){
			res.send({code:501,msg:'查询失败'});
		}else{
			res.send({code:200,msg:'查询成功',data:r});
		}
	})
})
//3.删除购物车信息
//地址：http://127.0.0.1:3000/v1/cart/
//请求方式delete
r.delete('/:hid',(req,res,next)=>{
	var obj = req.params;
	pool.query('delete from hw_shoppingcart_item where hid=?',[obj.hid],(err,r)=>{
		if(err){
			next(err);
			return;
		}
		if(r.affectedRows===0){
			res.send({code:501,msg:'删除失败'});
		}else{
			res.send({code:200,msg:'删除成功'});
		}
	})
})

//暴露路由器对象
module.exports=r
