local datadir = os.getenv('XDG_DATA_HOME')
package.path = (datadir .. '/share/lua/5.1/?.lua;')
  .. (datadir .. '/share/lua/5.1/?/init.lua;')
  .. package.path
print(package.path)
require('busted.runner')({ standalone = false })
