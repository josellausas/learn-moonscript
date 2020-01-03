--[[ Netowrk Client ]]
http = require "socket.http"

_printResponse = (ok, statusCode, statusText, headers) ->
  -- print("ok\t", ok)
  -- print("statusCode ->" , statusCode)
  -- print("statusText ->" , statusText)
  -- print("headers:")
  -- for i,v in pairs(headers)
  --   print("\t", i, v)
  nil

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
  _printResponse(ok, statusCode, statusText, headers)
  if ok
    callback data
  return ok

post = (url, callback) ->
  data = ""
  ok, statusCode, headers, statusText = http.request {
    method: "POST",
    :url,
    sink: (chunk) ->
      if chunk ~= nil
        data = data .. chunk
      return true
  }
  _printResponse(ok, statusCode, statusText, headers)
  if ok
    callback data
  return ok

return { :get, :post }
