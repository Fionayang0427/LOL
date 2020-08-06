class SqlBase {
  constructor() {
    //1，调用MySQL模块
    var mysql = require("mysql");

    //2，创建一个connection
    this.connection = mysql.createConnection({
      host: "localhost",
      user: "root",
      password: "123",
      port: "3306",
      database: "lol"
    });
    //3,连接
    this.connection.connect();
  }
  query(sql, callback) {
    this.connection.query(sql, function (error, result) {
      if (error) {
        console.log('参数错误' + error.message);
        return;
      }
      callback(result);
    })
  }
}
module.exports = SqlBase;
