FileGen = require('src.FileGen')
NetClient = require('src.NetClient')
DB = require('src.Database')

API_URL = "http://llau.systems/"

describe 'Secrets Manager', ->
    it 'can keep keys secret', ->
        pending "Implement Secret Manager"
        return

describe 'File Generator', ->
    it 'can generate pdf files', ->
        assert.truthy FileGen.create_file("pdf", "res/test"), "Create file function call"
        assert.truthy FileGen.file_exists("res/test.pdf"), "File does not exist"
        return

    it 'can generate pdf files', ->
        assert.truthy FileGen.create_file("txt", "res/test"), "Create file function call"
        assert.truthy FileGen.file_exists("res/test.txt"), "File does not exist"
        return

describe 'Network Client', ->
    it 'can get http', ->
        assert.truthy NetClient.get(API_URL, (content) -> nil), "http GET call failed"
        return
    it 'can get https', ->
        assert.truthy NetClient.get(API_URL, (content) -> nil), "secure http GET call failed"
        return
    it 'can post http', ->
        pending "Implement HTTP POST"
        -- assert.truthy NetClient.post(API_URL, (content) -> nil), "http POST call failed"
        return
    it 'can get a list from the API', ->
        pending "Implement getting a list from API"
        return

    it 'can auth with the server', ->
        pending "Implement AUTH"
        return

    it 'can send Slack Messages', ->
        pending "Implement AUTH"
        return

describe 'Database Client', ->
    it 'can create database entries', ->
        assert.truthy DB.log_msg(0, "Ran database tests")
        return