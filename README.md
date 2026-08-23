# Simple Streetlights

[![ContentDB](https://content.luanti.org/packages/mt-mods/simple_streetlights/shields/downloads/)](https://content.luanti.org/packages/mt-mods/simple_streetlights/)
[![Luacheck](https://github.com/mt-mods/simple_streetlights/actions/workflows/luacheck.yml/badge.svg)](https://github.com/mt-mods/simple_streetlights/actions/workflows/luacheck.yml)
[![License: LGPL v3](https://img.shields.io/badge/License-LGPL%20v3-blue.svg)](https://www.gnu.org/licenses/lgpl-3.0)

## Dependencies

- Luanti/Minetest v5.2
- MTG mod `default`
- [ilights](https://github.com/mt-mods/ilights)

## Usage

Simply "place" one of these and a complete street lamp is created (using normal nodes, so you can alter them piece by piece, or tear them down normally, if needed). They support various kinds of pole materials, and light sources, depending on what other mods you have installed. If you have basic_materials installed, then holding your Sneak key (usually "shift") while placing will automatically "set" the streetlight into concrete.

There are two general types of spawners:

Simple streetlight poles:

These consist of 5 fencepost-like objects stacked up, plus one sticking out at the top, and one light source under that, and can be crafted from 6 of the desired pole node and 1 light source.

Poles can be made from these materials:

    default "apple" wood fence posts
    default jungle wood fence posts
    Home Decor brass fence posts
    Home Decor wrought iron fence posts
    gloopblocks steel fence posts

The light source can be:

    a mese lamp cube
    a white Home Decor glowlight cube
    a white ilights light.

These spawners normally produce a simple, inert, always-on streetlight, but they also come in a specialized Digilines variety:

The mod makes a copy of each "pole" node that's registered, which is then modified to act as a Digilines conductor, with "Digiline-blue" stripes and altered node names and descriptions to make it evident, and the mod registers spawners for all viable pole-light combinations. These spawners can be crafted from 6 of the desired pole material, one Digilines wire, and one of the desired light source (but only where the light supports Digilines).

With these, if you wield one and then hold Sneak and punch at anything (or air/nothing at all), a dialog will pop up asking for a channel. From that point on, whenever you use one of these "simple" Digilines-enabled streetlight spawners, it will will set the light source's channel to whatever you put here.

Furthermore, these spawners offer two "distribution" options depending on what other mods you have:

    "trafficlight" mod in cheapie's Roads modpack or the "streets_trafficlight" mod from in webdesigner97's old Streets modpack -- these mods both supply Digilines distributors, so if you have either one, simple_streetlights will create spawners that put a distributor 2 meters below the bottom of the pole.

    cheapie's Digistuff mod -- if you don't have Digilines distributors, then simple_streetlights will look for Digistuff, and if present, will instead register spawners that'll place a vertical Digiline wire 2m below the pole instead.

Both the Digiline distributor and the vertical mesecon wire will connect to the pole through whatever intervening node is there (i.e. dirt, concrete, whatever), making for a convenient place to hook up the wiring while keeping it hidden below-ground. If you have both mods, only the Digilines distributor will be used.

Taken together, these features make it possible to place an entire street's worth of ready-to-control lights nearly in bulk, by just walking and placing. All you have to do after that is go back and dig a trench or whatever and lay a single, long line of Digilines wire (positioned appropriately to connect to the sides of the distributors) . Then cover up the trench, and hook up some appropriate lighting control setup to one end of that line.

"MineDOT" poles:

These are always the steel "big pole" from the aforementioned streetspoles mod, with a Home Decor white glowlight slab. These come in single-wide ( similar to the simple poles), and double-wide varieties. No recipes for these yet.

Like the Digilines variety of the simple street lights, the poles are Digilines conductive, and the lights they use respond to Digilines "on" and "off" messages, once you set a channel on them (but the above bulk channel and distributor feature hasn't been ported over to them yet).

Incidentally, "MineDOT" is cheapie's in-game road construction and maintenance "company" that operates on some of my servers

Other notes:

In survival mode, you must have all the materials in your inventory that you'd normally need were you to build equivalent streetlights by hand; all spawners deduct whatever materials/nodes they place, from your inventory, or they'll warn you if you're out of something you're telling the mod to use.

That is, you'll need 6 pole nodes, one light source, maybe one concrete block per placed streetlight. If it's a Digilines-enabled spawner, you'll need 6 Digilines wires per streetlight, also. If it's a Digiline-with-distributor spawner, then one distributor is needed per streetlight, as well.

A spawner may be upgraded from inert to Digilines-enabled and/or to Digilines with distributor, by placing it in the craft grid and adding a Digilines wire and/or a distributor.

When a spawner places concrete and/or a distributor, the node that was there before is simply destroyed/replaced, but not before checking if that space is owned (I figure 99.9% of the time, it'll just be dirt or stone, so who cares if it's replaced? :-) ).
