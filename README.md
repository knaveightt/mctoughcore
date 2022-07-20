# mctoughcore
**Minecraft Version 1.19**

This Minecraft datapack adds pseudo-hardcore gameplay to survival Minecraft. This datapack give the player 5 lives - when they are all lost, the player is permanently moved to **spectator mode** and unable to resume their survival gameplay (similar to hardcore mode).

As a penalty for death, the player loses 2 max hearts for each time dying. The player can regain max hearts by eating a golden apple. Each golden apple will provide the player with 2 max hearts lost. Eating an enchanted golden apple restores all max hearts lost.

To compensate for the added function of golden apples, the crafting recipe for them have changed: crafting of golden apples requires an apple surrounded by gold blocks (not ingots), as well as a ghast tear in the top-middle crafting slot. 

## Installing the Data Pack
Download the zip file of the latest datapack release. The zip file will a folder named **toughcore** which is the actual datapack. 

When creating a world for the first time, you are given an option to select a datapack when chosing your other options such as gamemode and difficulty. Click the datapacks button, and click the button to open the datapacks folder. In the folder that  is opened, drop the **toughcore** folder that was downloaded from the latest zip file released here. Close that folder and be sure to select the arrow that adds the datapack to the world you are creating! That's all you should need to do!

## Technical Explanation
The number of deaths the player has is tracked by an in-game objective. Based off this objective, the player has their max_health attribute changed directly. Everytime the player dies, the player is given the absorption and instant damage affect to force-trigger the new max_health value to take affect when they spawn back in the game.
Eating golden apples will give back max hearts that may have been lost. This is simply done by tracking (via objectives) when the player eats golden (or enchanted golden) apples and modifies things appropriatly. 

## Note on Previous Releases
In previous versions of this datapack, the player had an additional penalty of losing the ability to use an armor slot upon death (and kept losing additional armor slots with each additional death). This was due to the way the max number of hearts 'attribute' was changed, requiring the use of a piece of armor to change this attribute for the player. After around Minecraft version 1.16, this was no longer needed - in this case the 'attribute' command is leveraged in this data pack to modify the max_hearts attribute of the players directly.

## Upcoming Development
Development is done for the initial (beta) release. Additional development may be done to tweak difficulty and crafting recipes as players test the datapack. I may toy around with additional penalties upon death for balancing as well.
