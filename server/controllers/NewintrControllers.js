let SqlBase = require('../models/SqlBase.js');
let sqlBase = new SqlBase()

// 注册用户
module.exports.getnewinfo = function (req, res) {
    let sql = `select * from newintroduce`;
    sqlBase.query(sql, function (result) {
        result = result.splice(0,2);
        res.json(result);
        return;
    })

}
