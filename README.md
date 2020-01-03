# learn-moonscript
Learn Moonscript
(Osx only for now)

Learn how to use moonscript as a tool for all your scripting needs by example. 

- Test Driven Development (busted)
- File Generator (file io)
- Network Client (socket.http)
- File Utilities

# Install

Luarocks

`brew install luarocks`

## Luarocks Dependencies

`luarocks install vert`
`vert --lua-version=5.2 init .venv`
`source .venv/bin/activate`
`which luarocks`
`luarocks install moonscript busted pgmoon luasocket`

## Lua Notebooks
`pip install jupyter` and `pip install ilua`

# Build 

## Compile Moonscript

Compile all files in `src/` into `build/`

`moonc -t "build/" "src/"`

## Development watch files

Add the -w flag:

`moonc -w -t "build/" "src/"`

# Run Notebooks
Run : `jupyter notebook`

# Test

Run tests with : `busted .`
This will run all `*_spec.moon` files found
