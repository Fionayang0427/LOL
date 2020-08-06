let SqlBase = require('../models/SqlBase.js');
let sqlBase = new SqlBase()

// 注册用户
module.exports.gethero = function (req, res) {
    let heroname = req.query.heroname;
    let sql = `select * from heroinfo where name1='${heroname}'`;
    sqlBase.query(sql, function (result) {
        res.json(result);
        return;
    })

}
