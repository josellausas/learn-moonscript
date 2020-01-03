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

create_website = (name, url) ->
  res = assert(
    pg\query(
      "insert into websites (name, url) VALUES (" .. 
      pg\escape_literal(name) .. ", " ..
      pg\escape_literal(url) .. ")" .. " RETURNING id;"
    )
  )
  return res

update_website  = (id, name, url) ->
  res = assert(
    pg\query(
      "UPDATE websites SET name = ".. 
      pg\escape_literal(name) .. ", url = " ..
      pg\escape_literal(url) .. " WHERE ID = " .. id .. " RETURNING id;"
    )
  )
  return res

return {:log_msg, :create_website, :update_website}
