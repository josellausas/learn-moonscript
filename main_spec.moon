FileGen = require('FileGen')

describe 'File Generator', ->
    it 'can generate pdf files', ->
        assert.truthy FileGen.create_file("pdf", "test"), "Create file function call"
        assert.truthy FileGen.file_exists("test.pdf"), "File does not exist"

    it 'can generate pdf files', ->
        assert.truthy FileGen.create_file("txt", "test"), "Create file function call"
        assert.truthy FileGen.file_exists("test.txt"), "File does not exist"

