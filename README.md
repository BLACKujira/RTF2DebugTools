[简体中文](Readme/README.zhs.md) | [日本語](Readme/README.ja.md)

# Debug Tools for R-Type Final 2
This is a simple debugging tool designed for *R-Type Final 2* core players, Wiki editors, and Mod developers. It organizes some common functions into hotkeys for convenient access.  
- **Please do not use this mod for unfair competitive purposes.**

## Features
### Toggle Invincibility
- Default key: `F1`
- Enables/disables the player's collision. When disabled, enemies and enemy bullets cannot damage the player. However, collisions with wall-type objects will still occur, and being pushed out of the screen will still result in death. Additionally, this has side effects like being unable to collect items or connect the Force.
- The console will output the current player object and collision state.

### Decrease Scroll Speed by 1050
- Default key: `F2`
- Decreases the current stage's scroll speed by 1050.
- The console will output the current scroll manager object and scroll speed.

### Increase Scroll Speed by 1050
- Default key: `F3`
- Increases the current stage's scroll speed by 1050.
- The console will output the current scroll manager object and scroll speed.

### Toggle Scroll Enable State
- Default key: `F4`
- Enables or disables the stage scroll. When disabled, the stage will no longer progress regardless of the scroll speed.
- The console will output the current scroll manager object and scroll enable state.

### Set Scroll Speed to 1050
- Default key: `F5`
- Sets the scroll speed to 1050. Since 1050 is the default speed for most stages, this essentially resets the scroll speed.
- The console will output the current scroll manager object and scroll speed.

### Toggle High FOV Mode
- Default key: `F6`
- Sets the current camera's FOV to 100, allowing you to see content outside the usual screen bounds.

### Reset FOV
- Default key: `F7`
- Resets the current camera's FOV to 32, the default value.

## Installation Guide
1. If you haven't installed *UE4SS* yet, follow the [Installing UE4SS](https://github.com/BLACKujira/RTF2ModdingGuide/blob/master/Chapter1_TheBasics/en/InstallingUE4SS.md) guide to install *UE4SS v3.0.0* and update it to *v3.0.1*.
2. Download `RTF2DebugTools.zip` from the [Releases](https://github.com/BLACKujira/RTF2DebugToolsMod/releases) section.
3. Follow the [Installing LUA Mods](https://github.com/BLACKujira/RTF2ModdingGuide/blob/master/Chapter1_TheBasics/en/InstallingLUAMods.md) guide to install this mod.
4. If installed correctly, you should see the following output in the UE4SS console when the game is launched:
```
[xx:xx:xx] Starting Lua mod 'RTF2DebugTools'
[xx:xx:xx] [Lua] RTF2 Debug Tools loaded
```

## Notes
- Older versions of *UE4SS* might also be able to run this mod.

## Changing Key Bindings
1. Open `RTypeFinal2\Binaries\Win64\Mods\RTF2DebugTools\Scripts\main.lua` with any text editor or IDE.
2. Navigate to the bottom of the file, where the key-to-function bindings are located.
3. Refer to the [Key - UE4SS Documentation](https://docs.ue4ss.com/dev/lua-api/table-definitions/key.html) and modify the keys as needed. Even if you have no programming experience, the associations should be easy to understand!