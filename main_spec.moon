FileGen = require('FileGen')

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
        pending 'Implement HTTP Get'
        return
    it 'can post http', ->
        pending 'Implement HTTP Post'
        return