#!   /usr/bin/env tarantool
box.cfg {}
pg = require('pg')
os = require('os');
host = os.getenv('POSTGRES_HOST')
port = os.getenv('POSTGRES_PORT')
username = os.getenv('POSTGRES_USERNAME')
password = os.getenv('POSTGRES_PASSWORD')
db = os.getenv('POSTGRES_DB')

conn = pg.connect({
    host = host,
    port = port,
    user = username,
    password = password,
    db = db
})

function select(query)
    local test = conn:execute(query)
    local rows = {}
    for i, card in pairs(test) do
        row = row .. card.s2 .. ' '
    end
end