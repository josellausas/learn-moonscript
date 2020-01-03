DB = require 'src.Database'

class Website
  new: (name, url) =>
    @name = name
    @url = url
    @id = nil

  save: =>
    if @id
      -- Update the thing with this id
        res = DB.update_website(@id, @name, @url)
        if res
          return true
        else
          return false
    else
      -- Create a new entry on db and save ID
      res = DB.create_website(@name, @url)
      if res[1]
        @id = res[1]["id"]
        return true
      else
        -- Failed!
        return false


  load: (dict) =>
    id, name, url= {dict}
    @name = name
    @url = url
    @id = id

  loadWithId: (id) =>
    -- TODO: Get id from server and load
    obj = nil
    @\load obj

return {:Website}
