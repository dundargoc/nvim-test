local datadir = os.getenv('XDG_DATA_HOME')
package.path = (datadir .. '/nvim-test/luarocks/share/?.lua;')
  .. (datadir .. '/nvim-test/luarocks/share/?/init.lua;')
  .. package.path
print(package.path)
require('busted.runner')({ standalone = false })
