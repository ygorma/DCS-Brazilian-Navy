declare_plugin("Brazilian Navy",

{
image     	 = "Brazilian_Navy.bmp",
installed 	 = true, 
dirName	  	 = current_mod_path,

fileMenuName = _("Brazilian Navy"),
version		 = "0.3",		 
state		 = "installed",
info		 = _("Brazilian Navy Info"),


encyclopedia_path = current_mod_path .. '/Encyclopedia',
})
----------------------------------------------------------------------------------------

dofile(current_mod_path..'/Atlantico.lua') -- Collision OK
dofile(current_mod_path..'/Niteroi.lua') -- Collision OK
dofile(current_mod_path..'/Greenhalgh.lua') -- Collision OK
dofile(current_mod_path..'/Garcia.lua')
dofile(current_mod_path..'/Grajau.lua')
dofile(current_mod_path..'/Bahia.lua') -- Collision OK
dofile(current_mod_path..'/Amazonas.lua') -- Collision OK
dofile(current_mod_path..'/Macae.lua')

plugin_done()