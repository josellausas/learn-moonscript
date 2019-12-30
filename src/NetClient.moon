--[[ Netowrk Client ]]
http = require "socket.http"

get = (url, callback) ->
  data = ""
  ok, statusCode, headers, statusText = http.request {
    method: "GET",
    :url,
    sink: (chunk) ->
      if chunk ~= nil
        data = data .. chunk
      return true
  }
  print("ok\t", ok)
  print("statusCode ->" , statusCode)
  print("statusText ->" , statusText)
  print("headers:")
  for i,v in pairs(headers)
    print("\t", i, v)
  -- print(data)
  if ok
    callback data
  return ok
post = (url, headers, payload) -> nil

return { :get, :post }
