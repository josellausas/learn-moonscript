file_exists = (filename) ->
  file = io.open(filename, "r")
  if (file)
      file\close!
      return true
  return false

create_file = (filetype, filename) ->
  handle = assert(io.open(filename .. '.' .. filetype, "wb"))
  data = "\x41\x41\x41"
  handle\write data
  assert(handle\close!)
  return true

return {:file_exists, :create_file}
