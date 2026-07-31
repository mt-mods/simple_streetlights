-- simple streetlight spawner mod

local modpath = core.get_modpath("simple_streetlights")

streetlights = {}
streetlights.schematics = {}
streetlights.basic_materials = core.get_modpath("basic_materials")
streetlights.concrete = "basic_materials:concrete_block"
streetlights.distributor = "streets:digiline_distributor"
streetlights.vert_digiline = "digistuff:vertical_bottom"

dofile(modpath .. "/functions.lua")
dofile(modpath .. "/simple.lua")

if core.get_modpath("streetspoles") then
	if core.get_modpath("homedecor_lighting") then
		dofile(modpath .. "/minedot.lua")
	end
	if core.get_modpath("morelights_modern") then
		dofile(modpath .. "/modern.lua")
	end
end
