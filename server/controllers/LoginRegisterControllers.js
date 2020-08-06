let SqlBase = require('../models/SqlBase.js');
let sqlBase = new SqlBase()

// 注册用户
module.exports.register = function (req, res) {
    let username = req.query.username;
    let passwd = req.query.passwd;
    let nickname = req.query.nickname;

    let ob = {
        code: -1,
        msg: "用户已存在，请更换"
    };
    let sql = `select * from account where username = '${username}'`;
    sqlBase.query(sql, function (result) {
        if (result.length == 0) {
            ob.code = 1;
            ob.msg = "注册成功";
            let sql = `insert into account(username,passwd,nickname) values('${username}','${passwd}','${nickname}')`;
            sqlBase.query(sql, function (result) {
                res.json(ob)
            });
        }
        res.json(ob);
        return;
    })



}

// 登陆
module.exports.login = function (req, res) {

    let username = req.query.name;
    let passwd = req.query.passwd;

    let ob = {
        code: -1,
        msg: "用户不存在!请注册用户!",
        userMes: {}//用户信息
    };
    let sql = `select * from account where username = '${username}'`;
    sqlBase.query(sql, function (result) {
        if (result.length != 0) {
            if (result[0].passwd == passwd) {
                ob.code = 1;
                ob.msg = "用户合法";
                ob.id = result[0].id;

                ob.userMes.nickname = result[0].nickname;
                ob.userMes.headimg = result[0].headimg;
            } else {
                ob.code = 0;
                ob.msg = "密码错误，请重新输入！";
            }
        }


        res.json(ob);
    })
}