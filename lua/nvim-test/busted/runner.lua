local extra_path= os.getenv('XDG_DATA_HOME').. '/nvim-test/luarocks/share/'
package.path = (extra_path .. '?.lua;')
  .. (extra_path .. '?/init.lua;')
  .. package.path
print(package.path)
require('busted.runner')({ standalone = false })
