FileGen = require('src.FileGen')
NetClient = require('src.NetClient')

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
        assert.truthy NetClient.get("http://llau.systems/", (response) -> nil), "http GET call failed"
        return
    it 'can get https', ->
        assert.truthy NetClient.get("https://llau.systems/", (response) -> nil), "secure http GET call failed"
        return
    it 'can post http', ->
        pending 'Implement HTTP Post'
        return