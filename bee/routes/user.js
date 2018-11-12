//user模块
const express =require('express');
var router =express.Router();
//引入连接池
var pool =require('../pool.js');
/*登录 */
router.get('/login',(req,res)=>{
    //1.检测用户名和密码
    var uname = req.query;
    if(!uname){
      res.send({code: 401,msg: 'uname required'});
      return;
    }
    var upwd = req.query.upwd;
    if(!upwd){
      res.send({code: 402,msg: 'upwd required'});
      return;
    }
    //2.在数据库中查找用户名和密码匹配的数据
    var sql = `SELECT * FROM bee_user WHERE uname=? AND upwd=?`;
    pool.query(sql,[uname,upwd],(err,result)=>{
      console.log(result);
      //如果result数组长度大于0，说明登录成功，否则说明用户名或者密码错误 --16:09
      if(result.length>0){
        res.send({code: 200,msg: 'login suc'});
      }else{
        res.send({code: 301,msg: 'uname or upwd is error'});
      }
    })
  });

router.get('/register',(req,res)=>{
  var $uname = req.query;
  if(!$uname){
    res.send({code: 401,msg: 'uname required'});
	return;//阻止程序继续往后执行
  }
  //2.检测密码不能为空
  var $upwd = req.query;
  if(!$upwd){
    res.send({code: 402,msg: 'upwd required'});
    return;
  }
  //4.检测电话不能为空
  var $phone = req.query;
  if($phone==''){
    res.send({code: 404,msg: 'phone required'});
	return;
  }
  var sql = `INSERT INTO bee_user VALUES(NULL,?,?,?,NULL,NULL)`;
  pool.query(sql,[$uname,$upwd,$phone],(err,result)=>{
    if(err){
	  throw error; //抛出异常
	}
	res.send({code: 200, msg: 'register suc'});
  });
})
//http://127.0.0.1:8625/login?uname=fanfan&upwd=123456
module.exports=router;