pgmoon = require "pgmoon"
pg = pgmoon.new({
  host: "127.0.0.1",
  port: "5432",
  database: "pp",
  user: "pp"
})

assert(pg\connect())

log_msg = (severity, msg) ->
  -- Logs a message to the db
  res = assert(
    pg\query(
      "insert into logs (severity, msg) VALUES (" .. 
      pg\escape_literal(severity) .. ", " ..
      pg\escape_literal(msg) .. ")"
    )
  )
  return res

return {:log_msg}
