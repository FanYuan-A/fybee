const express =require('express');
var router =express.Router();
//引入连接池
var pool =require('../pool.js');

router.get("/lunbo",(req,res)=>{
    var sql="SELECT `id`, `img_url`, `href`, `title` FROM `bee_index_lunbo`";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})
//http://127.0.0.1:8625/index/lunbo
module.exports=router;