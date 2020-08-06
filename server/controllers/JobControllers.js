let SqlBase = require('../models/SqlBase.js');
let sqlBase = new SqlBase();

module.exports.select = function (req, res) {
        let key=req.query.key;
        let sql = `select * from ${key}`;
        sqlBase.query(sql, function (result) {
            res.json(result);
            return;
        })
}

module.exports.getherotag = function (req, res) {
    let tag = req.query.value;
    if(tag == '所有英雄') {
        let sql = `select * from hero`;
        sqlBase.query(sql, function (result) {
        res.json(result);
        return;
    })
    }
    let sql = `select * from hero where tag = '${tag}'`;
    sqlBase.query(sql, function (result) {
        res.json(result);
        return;
    })
}



