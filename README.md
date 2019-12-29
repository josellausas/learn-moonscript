# learn-moonscript
Learn Moonscript

(This has only been tested on osx)

# Install

Luarocks

`brew install luarocks`

## Luarocks Dependencies

`luarocks install moonscript busted`

# Build 

## Compile Moonscript

Compile all files in `src/` into `build/`

`moonc -t "build/" "src/"`

## Development watch files

Add the -w flag:

`moonc -w -t "build/" "src/"`

# Test

Run tests with : `busted .`
This will run all `*_spec.moon` files found
