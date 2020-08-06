let SqlBase = require('../models/SqlBase.js');
let sqlBase = new SqlBase()

module.exports.getnotice = function (req, res) {
    let tag = req.query.key;
    let sql = `select * from article where tag = '${tag}'`;
    sqlBase.query(sql, function (result) {
        res.json(result);
        return;
    })

}
