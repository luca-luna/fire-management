var express = require("express");
var router = express.Router();
require('dotenv').config();

router.get("/", function(req, res, next) {
    const { Client } = require('pg');

    const client = new Client({
        port: process.env.DATABASE_PORT,
        host: process.env.DATABASE_HOST,
        user: process.env.DATABASE_USERNAME,
        password: process.env.DATABASE_PASSWORD,
        database: process.env.DATABASE,
    });

    client.connect().then(() => console.log('Connected successfully'));
    const query = `SELECT * FROM "fire_perimeter" LIMIT 5`;
    /* const query = ` SELECT "OBJECTID", "GLOBALID", "FIRENAME", "CN"
                    FROM fire_perimeter
                    WHERE "OBJECTID" = 79871118` */
    client.query(query, (err, result) => {
        if (err) {
            console.log(err.stack)
        } else {
            res.json(result.rows);
        }
    });

});

module.exports = router;