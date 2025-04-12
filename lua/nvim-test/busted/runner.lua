local datadir = os.getenv('XDG_DATA_HOME')
package.path = (datadir .. '/nvim-test/luarocks/?.lua;')
  .. (datadir .. '/nvim-test/?/init.lua;')
  .. package.path
print(package.path)
require('busted.runner')({ standalone = false })
