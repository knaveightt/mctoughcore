# manages the armor slots and max hearts of the player
###

# adjust max hearts via a non-removable chainmail helmet
execute as @a[scores={tcTotalHearts=8}] at @s run replaceitem entity @p armor.head minecraft:chainmail_helmet{display:{Name:'{"text":"Blocked"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:974694,UUIDMost:641839},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:0,Operation:0,UUIDLeast:299077,UUIDMost:440539},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-4,Operation:0,UUIDLeast:450604,UUIDMost:685411}]} 1
execute as @a[scores={tcTotalHearts=6}] at @s run replaceitem entity @p armor.head minecraft:chainmail_helmet{display:{Name:'{"text":"Blocked"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:974694,UUIDMost:641839},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:0,Operation:0,UUIDLeast:299077,UUIDMost:440539},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-8,Operation:0,UUIDLeast:450604,UUIDMost:685411}]} 1
execute as @a[scores={tcTotalHearts=4}] at @s run replaceitem entity @p armor.head minecraft:chainmail_helmet{display:{Name:'{"text":"Blocked"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:974694,UUIDMost:641839},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:0,Operation:0,UUIDLeast:299077,UUIDMost:440539},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-12,Operation:0,UUIDLeast:450604,UUIDMost:685411}]} 1
execute as @a[scores={tcTotalHearts=2}] at @s run replaceitem entity @p armor.head minecraft:chainmail_helmet{display:{Name:'{"text":"Blocked"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:974694,UUIDMost:641839},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:0,Operation:0,UUIDLeast:299077,UUIDMost:440539},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-16,Operation:0,UUIDLeast:450604,UUIDMost:685411}]} 1

# continue to restrict armor slots for each additional death
execute as @a[scores={tcTotalHearts=..6}] at @s run replaceitem entity @s armor.feet minecraft:chainmail_boots{display:{Name:'{"text":"Blocked"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:974694,UUIDMost:641839},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:0,Operation:0,UUIDLeast:299077,UUIDMost:440539}]} 1
execute as @a[scores={tcTotalHearts=..4}] at @s run replaceitem entity @s armor.legs minecraft:chainmail_leggings{display:{Name:'{"text":"Blocked"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:974694,UUIDMost:641839},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:0,Operation:0,UUIDLeast:299077,UUIDMost:440539}]} 1
execute as @a[scores={tcTotalHearts=..2}] at @s run replaceitem entity @s armor.chest minecraft:chainmail_chestplate{display:{Name:'{"text":"Blocked"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:974694,UUIDMost:641839},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:0,Operation:0,UUIDLeast:299077,UUIDMost:440539}]} 1

# as the player gains back max hearts, make sure they gain back armor slots as well
execute as @a[scores={tcTotalHearts=10}] at @s run clear @s minecraft:chainmail_helmet{display:{Name:'{"text":"Blocked"}'}} 1
execute as @a[scores={tcTotalHearts=10}] at @s run clear @s minecraft:chainmail_boots{display:{Name:'{"text":"Blocked"}'}} 1
execute as @a[scores={tcTotalHearts=10}] at @s run clear @s minecraft:chainmail_leggings{display:{Name:'{"text":"Blocked"}'}} 1
execute as @a[scores={tcTotalHearts=10}] at @s run clear @s minecraft:chainmail_chestplate{display:{Name:'{"text":"Blocked"}'}} 1
execute as @a[scores={tcTotalHearts=8}] at @s run clear @s minecraft:chainmail_boots{display:{Name:'{"text":"Blocked"}'}} 1
execute as @a[scores={tcTotalHearts=8}] at @s run clear @s minecraft:chainmail_leggings{display:{Name:'{"text":"Blocked"}'}} 1
execute as @a[scores={tcTotalHearts=8}] at @s run clear @s minecraft:chainmail_chestplate{display:{Name:'{"text":"Blocked"}'}} 1
execute as @a[scores={tcTotalHearts=6}] at @s run clear @s minecraft:chainmail_leggings{display:{Name:'{"text":"Blocked"}'}} 1
execute as @a[scores={tcTotalHearts=6}] at @s run clear @s minecraft:chainmail_chestplate{display:{Name:'{"text":"Blocked"}'}} 1
execute as @a[scores={tcTotalHearts=4}] at @s run clear @s minecraft:chainmail_chestplate{display:{Name:'{"text":"Blocked"}'}} 1

# make sure no non-removable, armorslot-restricting items get lose and can be picked up accidentally 
execute as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Blocked"}'}}}}] at @s run kill @s
