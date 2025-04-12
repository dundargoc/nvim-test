local prefix = os.getenv('NVIM_TEST_DATA') .. '/nvim-test/luarocks/'
package.path = (prefix .. 'share/lua/5.1/?.lua;')
  .. (prefix .. 'share/lua/5.1/?/init.lua;')
  .. package.path

local platform = vim.uv.os_uname()
local suffix = (platform and platform.sysname:lower():find 'windows') and '.dll' or '.so'
package.cpath = prefix .. 'lib/lua/5.1/?' .. suffix .. ';' .. package.cpath
require('busted.runner')({ standalone = false })
