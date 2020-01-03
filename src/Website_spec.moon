
Website = require('src.Website')

API_URL = "http://llau.systems/"

describe 'Website Model', ->
    it 'can create a new website', ->
      web = Website.Website("Test","test.com")
      assert.truthy web
      assert.truthy web\save!

      web.name = "Changed!"
      web\save!
      return


