declare_plugin("Brazilian Navy",

{
image     	 = "Brazilian_Navy.bmp",
installed 	 = true, 
dirName	  	 = current_mod_path,

fileMenuName = _("Brazilian Navy"),
version		 = "0.3",		 
state		 = "installed",
info		 = _("Brazilian Navy"),


encyclopedia_path = current_mod_path .. '/Encyclopedia',
})
----------------------------------------------------------------------------------------

dofile(current_mod_path..'/Atlantico.lua')
dofile(current_mod_path..'/Greenhalgh.lua')
dofile(current_mod_path..'/Defensora.lua')
dofile(current_mod_path..'/Independencia.lua')
dofile(current_mod_path..'/Garcia.lua')
dofile(current_mod_path..'/Grajau.lua')
dofile(current_mod_path..'/Bahia.lua')
dofile(current_mod_path..'/Amazonas.lua')
dofile(current_mod_path..'/Macae.lua')


plugin_done()