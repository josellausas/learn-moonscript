DB = require "src.Database"

file_exists = (filename) ->
  file = io.open(filename, "r")
  if (file)
      file\close!
      return true
  return false

create_file = (filetype, filename) ->
  filename_extension = filename .. '.' .. filetype
  handle = assert(io.open(filename_extension, "wb"))
  data = "\x41\x41\x41"
  handle\write data
  assert(handle\close!)
  DB.log_msg 0, ("Created file: " .. filename_extension)
  return true

return {:file_exists, :create_file}
