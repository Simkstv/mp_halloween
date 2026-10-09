fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name "mp_halloween"
description "Halloween"
author "MCH"
version "1"

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

files {
	'stream/prop_mp_skull.ydr',
	'stream/prop_mp_skull.ytd',
	'stream/prop_mp_skull.ytyp'
}

data_file "DLC_ITYP_REQUEST" "stream/prop_mp_skull.ytyp"