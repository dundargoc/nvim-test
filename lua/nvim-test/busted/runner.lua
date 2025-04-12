local extra_path = os.getenv('XDG_DATA_HOME').. '/nvim-test/luarocks/share/lua/5.1/'
package.path = (extra_path .. '?.lua;')
  .. (extra_path .. '?/init.lua;')
  .. package.path
-- extra_path= os.getenv('HOME').. '/.luarocks/share/lua/5.1/'
-- package.path = (extra_path .. '?.lua;')
--   .. (extra_path .. '?/init.lua;')
--   .. package.path

local platform = vim.uv.os_uname()
local suffix = (platform and platform.sysname:lower():find 'windows') and '.dll' or '.so'
package.cpath = os.getenv(XDG_DATA_HOME) .. '/lib/lua/5.1/?' .. suffix .. ';' .. package.cpath
print(package.cpath)
require('busted.runner')({ standalone = false })
