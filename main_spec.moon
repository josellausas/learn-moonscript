FileGen = require('src.FileGen')
NetClient = require('src.NetClient')
DB = require('src.Database')
Time = require('src.Time')

-- TODO: seed random

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

describe 'Time Client', ->
    it 'can get ntp time', ->
        assert.truthy Time.get_ntp_time!
        return

describe 'Fuzzer', ->
    get_fuzz_string = (length, percent) ->
        bad_chars = {
            '\x00',
            '\x1D',
            '\x13',
            '\'',
            '\"',
            '\n',
        }
        if percent > 100
            percent = 100
        if percent < 0
            percent = 0
        math.randomseed(os.clock())
        build_string = ""
        for i = 1, length
            random_num = math.random() * 100
            if random_num <= percent
                -- Insert a 'dangerous' char
                random_index = math.floor(math.random(1, #bad_chars))
                print("Index: " .. random_index)
                danger_char = bad_chars[random_index]
                build_string = build_string .. danger_char
            else
                build_string = build_string .. '\x41'
        return build_string

    it 'can generate fuzz strings', ->
        naughty_string = get_fuzz_string 100, 50 -- 10 chars, 50% naughty
        print(naughty_string)
        assert.equal 100, #naughty_string

describe 'k9', ->
    it 'can find forms withour csrf', ->
        pending "Implement Secret Manager"
        return