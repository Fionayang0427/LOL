let SqlBase = require('../models/SqlBase.js');
let sqlBase = new SqlBase()

module.exports.gethotinfo = function (req, res) {
    let tag = req.query.key;
    let sql = `select * from hotactive where hot_tag = '${tag}'`;
    sqlBase.query(sql, function (result) {
        res.json(result);
        return;
    })

}
