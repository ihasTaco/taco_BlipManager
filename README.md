# taco_BlipManager
**FiveM Only** | A simple and easy to use blip manager for FiveM<br>
Uses FiveM natives, so can be used with any framework!

## Important Links:
 * Blip Sprite ID's: https://docs.fivem.net/docs/game-references/blips/
 * Blip Sprite Colors: https://docs.fivem.net/docs/game-references/blips/#blip-colors
 * Blip Behavior: https://docs.fivem.net/natives/?_0x9029B2F3DA924928

## Setup
 * Add `taco_BlipManager` to your FiveM server
 * Add to resource.cfg or server.cfg: `ensure taco_BlipManager`
 * Done! Well kinda, below is how to add new blips to the map!

## Configuration
 * **title**: The text to show on the blip
 * **x**: Coordinates where the blip should show on the map
 * **y**: Coordinates where the blip should show on the map
 * **z**: Coordinates where the blip should show on the map
 * **id**: Blip sprite ID to show (See [Blip Sprite ID's](https://docs.fivem.net/docs/game-references/blips/))
 * **color**: Blip sprite color to show (See [Blip Sprite ID's](https://docs.fivem.net/docs/game-references/blips/#blip-colors))
 * **range**: Whether to show the blip only when the player is close
 * **behavior**: Defines when and where the blip should show up on the map (if ever) (See [Blip Behavior](https://docs.fivem.net/natives/?_0x9029B2F3DA924928))
```
{title = "Police Station",  x = 359.36538,  y = -1583.598,      z = 28.8586,    id = 526,       color = 3,    range = true,    behavior = 4},
```
