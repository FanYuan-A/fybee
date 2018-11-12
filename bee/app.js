//使用express构建web服务器
const express = require('express');
const bodyParser = require('body-parser');
const user = require('./routes/user.js');
const index = require('./routes/index.js');
const cake = require('./routes/cake.js');
var app = express();
app.listen(8625);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
app.use('/user',user);
app.use('/index',index);
app.use('/cake',cake);