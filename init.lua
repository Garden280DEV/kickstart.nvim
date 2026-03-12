require 'core.settings'
require 'core.mapper'

map(require 'mappings_general')

require 'core.autocmds'

require 'core.lazy'
require('lazy').setup 'plugins'

-- map(require 'mappings_plugins')
