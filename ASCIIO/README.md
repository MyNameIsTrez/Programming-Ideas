# ASCIIO

A Factorio clone for ComputerCraft.

## Gameplay goals of this project
* Thousands of entities working at 20 frames/s.
* Mods
* Multiplayer
* ASCII texture editor

## Technical goals of this project
* Experiment with using `_G.g` as a global table.
  The idea behind it is that it'll store any magic values that'd normally be spread out across a ton of Lua code.
  
  This should mean it'll be much easier to:
    1. Find where magic values are stored when you want to change them in the Lua code.
	2. Have an in-game settings menu.
	3. Visualize all magic variables with an in-game debugger overlay.
* Try out the new `events` API in places where maximum efficiency isn't necessary.