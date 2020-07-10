const mysql = require('./connection');


exports.selectById = async (id) => {
    const connection = await mysql.connect();
    const [data] = await connection.query(`SELECT * FROM users WHERE id = ?;`, id);
    return data;
}
exports.newUser = async (user_obj) => {
    const connection = await mysql.connect();
    const [data] = await connection.query(`INSERT INTO corona_cocktaildb.users SET ?`, user_obj);
    return data;
}