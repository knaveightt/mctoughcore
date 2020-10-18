# mctoughcore
**Minecraft Version 1.16.3**

This Minecraft datapack adds pseudo-hardcore gameplay to survival Minecraft. This datapack give the player 5 lives - when they are all lost, the player is permanently moved to **spectator mode** and unable to resume their survival gameplay (similar to hardcore mode).

As a penalty for death, the player loses 2 max hearts for each time dying. In additon, every death causes the player to lose the use of 1 armor slot (starting with the helmet, then the boots, leggins, and chestplate). 

The player can regain max hearts and armor slots, by eating a golden apple. Each golden apple will provide the player with 1 armor slot and 2 max hearts lost. Eating an enchanted golden apple restores all armor slots and max hearts lost.

To compensate for the added function of golden apples, the crafting recipe for them have changed: crafting of golden apples requires an apple surrounded by gold blocks (not ingots), as well as a ghast tear in the top-middle crafting slot. 

## Installing the Data Pack
Download the zip file of the latest datapack release. The zip file will contain two folders, a **toughcore** folder which is the actual datapack, and a **toughcore_Textures** folder which is the optional resource pack (see **Technical Explanation** below) 

First ensure you have created and saved new world in Minecraft. After this is done, browse to your **.minecraft** folder and find the saves directory. Open the folder for the world you just created, and you will find the **datapacks** directory. Drop the **toughcore** folder in this directory and you are good to go!

It is highly recommended to add the custom resource pack to make the use of chainmail armor (which limits what armorslots the player can use) invisible. In the **.minecraft** folder is the **resourcepacks** directory, here you will need to drop the **toughcore_Textures** folder. Add the resourcepack like any normal resourcepack in-game, and you are set!

## Technical Explanation
The number of deaths the player has is tracked by an in-game objective. Based off this objective, the player is given a chainmail helmet with curse of binding that modifies the maxHealth attirbute, and consequently the max number of hearts the player has. As the number of deaths the player has increased, the player is forced to equip these cursed chainmail armor parts in their armor slots to limit what armor the player can put on. Since these modified chainmail armor parts of curse of binding, they cannot take them off and naturally prevent what armor can be used. The player sees the special chain armor taking up their armor slots with the a named indicator of "Blocked" so they are aware they cannot modify that armor slot until they eat some golden apples.

The optional resourcepack that is provided makes chainmail armor (which as of the time of release cannot be crafted in the vanilla game) invisible, so even though the player is informed in their inventory that they may not be able to use a certain slot, they will not be shown as wearing the "blocking" chainmail armor in the game. 

The golden apples eaten will removed the "blocked" nature of their armor slots and decrease the max heart limit they are experiencing. This is simply done by tracking (via objectives) when the player eats golden (or enchanted golden) apples and modifies things appropriatly. 

## Upcoming Development
Development is done for the initial (beta) release. Additional development may be done to tweak difficulty and crafting recipes as players test the datapack. 
