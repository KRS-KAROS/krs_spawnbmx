fx_version 'cerulean'
game 'gta5'
lua54 'yes'

Nome 'Spawn Bmx Krs'
Autore '𝗞𝗥𝗦®'
Discord 'https://discord.gg/wM4XDaXfU8' -- 𝗞𝗥𝗦® --

shared_script "@es_extended/imports.lua"
shared_script '@ox_lib/init.lua'

client_scripts {
    'cl_bmx.lua'
} 

server_scripts {
    'sv_bmx.lua'
}

dependencies {
    'PolyZone',
    'ox_target',
    'ox_lib',
    'ox_inventory'
}