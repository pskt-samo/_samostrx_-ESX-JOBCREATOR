fx_version 'cerulean'
game 'gta5'

author '_samostrx_'
description 'ESX Job Creator - Similar to Lunaru JobCreator'
version '1.0.0'

shared_scripts {
    '@es_extended/imports.lua',
    'config.lua'
}

client_scripts {
    'client/main.lua',
    'client/menu.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

dependencies {
    'es_extended',
    'oxmysql'
}
