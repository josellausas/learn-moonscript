class Thing
    name: "unknown"

class Person extends Thing
    new: (name) =>
        @name = name
    say_name: => print "Hello, I am #{@name}!" 


class Number
    new: (number=0) =>
        @value = number

class BinConverter
    new: =>
        @display = Number!
    convert: (mode) =>
        -- Apply the the operation to the number on the display
        if @display == 0
            print 0
        else
            if mode == 'hex'
                return '0x...'

class Calculator
    new: =>
        @display = Number!


describe 'Thing', ->
    it 'things have names', ->
        assert.truthy Thing!.name, 'Things should have names'

describe 'Person', ->
    it 'should have a name', ->
        p = Person 'Moofasa'
        assert.equal p.name, 'Moofasa', 'Did not have the same name'

describe 'Binary Converter', ->
    it 'can convert to hex', ->
        hex = BinConverter!\convert 'hex'
        assert.truthy hex
