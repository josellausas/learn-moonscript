class Thing
    name: "unknown"

class Person extends Thing
    new: (name) =>
        @name = name
    say_name: => print "Hello, I am #{@name}!" 

describe 'Thing', ->
    it 'things have names', ->
        assert.truthy Thing!.name
