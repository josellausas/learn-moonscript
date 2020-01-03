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

### Install virtual env lua
`luarocks install vert`
`vert make dev --lua-version=5.2.4`
`source ~/.verts/dev/bin/activate`
`which luarocks`

### Install ssl
`luarocks install luasec OPENSSL_DIR=/usr/local/opt/openssl@1.1`

### Install deps
`luarocks install luasocket`
`luarocks install moonscript`
`luarocks install busted`
`luarocks install pgmoon`

### Install Lua Notebooks
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
