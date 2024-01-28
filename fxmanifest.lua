fx_version 'adamant'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Rexshack, Outsider VORP '
description 'Railroad Job'
lua54 'yes'

shared_script 'config.lua'
client_scripts {
	'client/client.lua',
	'client/npc.lua',
}
server_script 'server.lua'