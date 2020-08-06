//引入框获
let express = require("express");
//获得对象
var app = express();

//设置跨域访问
app.all("*", function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
  // res.header("Access-Control-Allow-Headers", "X-Requested-With");
  res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
  res.header("Content-Type", "multipart/form-data");
  next();
});
//引入body-parser模块
let bodyParser = require("body-parser");
//创建 application/x-www-form-urlencoded 编码解析
let urlencodedParser = bodyParser.urlencoded({
  extended: false
});
app.use(bodyParser.urlencoded({ extended: false }));
//引入文件上传的模块
let multer = require("multer");
//设置静态文件
app.use(express.static("public"));

//定义端口号
let port = 8888;


// 登陆注册
let LoginRegisterControllers = require('./controllers/LoginRegisterControllers')
// 登陆
app.get("/login", LoginRegisterControllers.login);
// 注册
app.get("/register",LoginRegisterControllers.register);

// 获取公告等消息
let NoticeControllers = require('./controllers/NoticeControllers')
app.get("/notice", NoticeControllers.getnotice);

// 获取热门活动
let HotactiveControllers = require('./controllers/HotactiveControllers')
app.get("/hotactive", HotactiveControllers.gethotinfo);

// 获取新英雄
let NewintrControllers = require('./controllers/NewintrControllers')
app.get("/newintr", NewintrControllers.getnewinfo);


// 获取英雄信息
let JobControllers = require('./controllers/JobControllers')
app.get("/hero", JobControllers.select);
app.get("/getherotag", JobControllers.getherotag);

// 获取个人英雄信息
let HeroinfoControllers = require('./controllers/HeroinfoControllers')
app.get("/heroinfo", HeroinfoControllers.gethero);

let server = app.listen(port, function () {
  console.log('启动');
});
