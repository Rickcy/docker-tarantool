#!/usr/bin/env tarantool
box.cfg{}
pg = require('pg')
conn = pg.connect({
    host = '192.168.1.203',
    port = 5432,
    user = 'test',
    password = 'test',
    db = 'test'
})
conn:ping()
