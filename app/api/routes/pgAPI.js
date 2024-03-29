var express = require("express");
var router = express.Router();
require('dotenv').config();

router.get("/", function(req, res) {
    const { Client } = require('pg');

    const client = new Client({
        port: process.env.DATABASE_PORT,
        host: process.env.DATABASE_HOST,
        user: process.env.DATABASE_USERNAME,
        password: process.env.DATABASE_PASSWORD,
        database: process.env.DATABASE,
    });

    client.connect()
    .then(() => console.log('Connected successfully'))
    .then(() => console.log(req.query.name));
    //const query = `SELECT * FROM "fire_perimeter" LIMIT 5`;
    const query = ` SELECT op."FIRENAME", op."CN", op."DISCOVERYDATETIME", op."STATCAUSE", op."UNITIDOWNER", op."TOTALACRES", c."SIZECLASS"
                    FROM occurrence_point as op
                    JOIN class as c
                    on c."TOTALACRES" = op."TOTALACRES"
                    WHERE "FIRENAME" = '${req.query.name}'
                        AND extract(year from op."DISCOVERYDATETIME") > ${req.query.start ?? 1900}
                        AND extract(year from op."DISCOVERYDATETIME") < ${req.query.end ?? 2023} `
                
    client.query(query, (err, result) => {
        if (err) {
            console.log(err.stack)
        } else {
            res.json(result.rows);
        }
    });

});

module.exports = router;