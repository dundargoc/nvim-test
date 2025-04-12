local extra_path = os.getenv('XDG_DATA_HOME').. '/nvim-test/luarocks/share/lua/5.1/'
package.path = (extra_path .. '?.lua;')
  .. (extra_path .. '?/init.lua;')
  .. package.path
-- extra_path= os.getenv('HOME').. '/.luarocks/share/lua/5.1/'
-- package.path = (extra_path .. '?.lua;')
--   .. (extra_path .. '?/init.lua;')
--   .. package.path
print(package.cpath)
require('busted.runner')({ standalone = false })
