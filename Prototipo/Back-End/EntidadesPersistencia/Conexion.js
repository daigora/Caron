const { Client } = require('pg');
const dbConfig = require("../config.json").db;

const client = new Client({
    user: dbConfig.user,
    host: dbConfig.host,
    database: dbConfig.database,
    password: dbConfig.password,
    port: dbConfig.port,
});
client.connect();

exports.client = client;