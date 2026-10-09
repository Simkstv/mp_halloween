fx_version 'cerulean'
game 'gta5'

name 'mp_halloween'
author 'MCH'
version '2.0.1'

shared_scripts {
  '@ox_lib/init.lua',
  'shared/config.lua'
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'server/main.lua'
}

client_script 'client/main.lua'

dependencies {
  '/onesync',
  'mp_halloween_assets',
  'oxmysql',
  'ox_lib',
  'ox_target'
}