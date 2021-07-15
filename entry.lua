declare_plugin("Brazilian Forces",

{
image     	 = "Brazilian_Forces.bmp",
installed 	 = true, 
dirName	  	 = current_mod_path,

fileMenuName = _("Brazilian Forces"),
version		 = "0.1",		 
state		 = "installed",
info		 = _("Brazilian Forces"),


encyclopedia_path = current_mod_path .. '/Encyclopedia',
})
----------------------------------------------------------------------------------------

dofile(current_mod_path..'/Atlantico.lua')
dofile(current_mod_path..'/Greenhalgh.lua')
dofile(current_mod_path..'/Bosisio.lua')
dofile(current_mod_path..'/Rademaker.lua')
dofile(current_mod_path..'/Defensora.lua')
dofile(current_mod_path..'/Independencia.lua')
dofile(current_mod_path..'/Garcia.lua')


plugin_done()