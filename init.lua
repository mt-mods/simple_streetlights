-- simple streetlight spawner mod

local modpath = minetest.get_modpath("simple_streetlights")

streetlights = {}
streetlights.basic_materials = minetest.get_modpath("basic_materials")
streetlights.concrete =      "basic_materials:concrete_block"
streetlights.distributor =   "streets:digiline_distributor"
streetlights.vert_digiline = "digistuff:vertical_bottom"

dofile(modpath.."/functions.lua")
dofile(modpath.."/simple.lua")

if minetest.get_modpath("homedecor_lighting") and minetest.get_modpath("streetspoles") then
	dofile(modpath.."/minedot.lua")
end
