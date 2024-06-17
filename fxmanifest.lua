fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

description 'rex-fishmonger'
version '1.0.5'

client_scripts {
    'client/client.lua',
    'client/npcs.lua',
}

server_scripts {
    'server/server.lua'
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
    '@rsg-core/shared/locale.lua',
    'locales/en.lua', -- Change this to your preferred language
}

dependencies {
    'rsg-core',
    'rsg-target',
    'ox_lib',
}

lua54 'yes'
