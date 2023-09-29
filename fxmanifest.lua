fx_version 'cerulean'
game 'gta5'

author 'Custom Job Center Made By Fusion Utilizing Ox Lib by Overextended And ESX'

shared_script 'config.lua'

server_scripts { 
    'server.lua',
    '@es_extended/imports.lua'
}
client_scripts {
    '@ox_lib/init.lua',
    'client.lua'
}


lua54 'yes'

dependencies {
    'ox_lib',
    'es_extended',
}