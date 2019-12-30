FileGen = require('src.FileGen')
NetClient = require('src.NetClient')

API_URL = "http://llau.systems/"

describe 'File Generator', ->
    it 'can generate pdf files', ->
        assert.truthy FileGen.create_file("pdf", "test"), "Create file function call"
        assert.truthy FileGen.file_exists("test.pdf"), "File does not exist"
        return

    it 'can generate pdf files', ->
        assert.truthy FileGen.create_file("txt", "test"), "Create file function call"
        assert.truthy FileGen.file_exists("test.txt"), "File does not exist"
        return

describe 'Network Client', ->
    it 'can get http', ->
        assert.truthy NetClient.get(API_URL, (content) -> nil), "http GET call failed"
        return
    it 'can get https', ->
        assert.truthy NetClient.get(API_URL, (content) -> nil), "secure http GET call failed"
        return
    it 'can post http', ->
        pending "Implement this"
        -- assert.truthy NetClient.post(API_URL, (content) -> nil), "http POST call failed"
        return
    it 'can get a list from the API', ->
        pending "Implement getting a list from API"
        return