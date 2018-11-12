const express =require('express');
var router =express.Router();
//引入连接池
var pool =require('../pool.js');
/*查询蛋糕的列表*/
router.get("/cakelist",(req,res)=>{
    var pno = req.query.pno;
var pageSize = req.query.pageSize;
var sql = "SELECT count(id) AS b FROM bee_cake";
var process = 0;
var obj = {pno:pno,pageSize:pageSize};
pool.query(sql,(err,result)=>{
    if(err) throw err;
var pageCount = Math.ceil(result[0].b/pageSize);
process+=50;
obj.pageCount = pageCount;
if(process == 100){
    res.send({code:1,msg:obj});
}
})
var sql="SELECT `id`, `name`,`img_url` FROM `bee_cake` LIMIT ?,?";
var offset = parseInt((pno-1)*pageSize);
pageSize = parseInt(pageSize);
pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
process += 50;
obj.data= result;
if(process == 100){
    res.send({code:1,msg:obj})
}
})
})

router.get("/detail",(req,res)=>{
    var cid = req.query.cid;
    var sql="SELECT bc.*,bcs.size,bcs.weight,bcs.tableware_num,bcs.eating_num,bcs.price,bcs.send_time,bcs.specification_url FROM bee_cake bc LEFT JOIN bee_cake_specification bcs ON bc.id = bcs.bee_cake_id WHERE bc.id=?";
    pool.query(sql,[cid],(err,result)=>{
    if(err) throw err;
      res.send(result);
  })
})
//http://127.0.0.1:8625/cake/cakelist?offset=1&pageSize=6
//http://127.0.0.1:8625/cake/detail?cid=4
module.exports=router;