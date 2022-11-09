fx_version 'cerulean'
game 'gta5'

description 'gdn-thegalleryjob made by GDN-Development'
version '1.0.0'


shared_scripts {
	'config.lua',
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

dependencies {
	'ps-buffs',
    'qb-menu',
}

lua54 'yes'
