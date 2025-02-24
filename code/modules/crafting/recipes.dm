
/datum/crafting_recipe
	var/name = "" //in-game display name
	var/reqs[] = list() //type paths of items consumed associated with how many are needed
	var/result //type path of item resulting from this craft
	var/tools[] = list() //type paths of items needed but not consumed
	var/time = 30 //time in deciseconds
	var/parts[] = list() //type paths of items that will be placed in the result
	var/chem_catalysts[] = list() //like tools but for reagents
	var/category = CAT_NONE //where it shows up in the crafting UI


/datum/crafting_recipe/pin_removal
	name = "Pin Removal"
	result = /obj/item/weapon/gun
	reqs = list(/obj/item/weapon/gun = 1)
	parts = list(/obj/item/weapon/gun = 1)
	tools = list(/obj/item/weapon/weldingtool, /obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 50
	category = CAT_WEAPON

/datum/crafting_recipe/IED
	name = "IED"
	result = /obj/item/weapon/grenade/iedcasing
	reqs = list(/datum/reagent/fuel = 50,
				/obj/item/stack/cable_coil = 1,
				/obj/item/device/assembly/igniter = 1,
				/obj/item/weapon/reagent_containers/food/drinks/soda_cans = 1)
	parts = list(/obj/item/weapon/reagent_containers/food/drinks/soda_cans = 1)
	time = 15
	category = CAT_WEAPON

/datum/crafting_recipe/lance
	name = "explosive lance (grenade)"
	result = /obj/item/weapon/twohanded/spear
	reqs = list(/obj/item/weapon/twohanded/spear = 1,
				/obj/item/weapon/grenade = 1)
	parts = list(/obj/item/weapon/grenade = 1)
	time = 15
	category = CAT_WEAPON

/datum/crafting_recipe/strobeshield
	name = "strobe shield"
	result = /obj/item/device/assembly/flash/shield
	reqs = list(/obj/item/wallframe/flasher = 1,
				/obj/item/device/assembly/flash/handheld = 1,
				/obj/item/weapon/shield/riot = 1)
	time = 40
	category = CAT_WEAPON

/datum/crafting_recipe/molotov
	name = "Molotov"
	result = /obj/item/weapon/reagent_containers/food/drinks/bottle/molotov
	reqs = list(/obj/item/weapon/reagent_containers/glass/rag = 1,
				/obj/item/weapon/reagent_containers/food/drinks/bottle = 1)
	parts = list(/obj/item/weapon/reagent_containers/food/drinks/bottle = 1)
	time = 40
	category = CAT_WEAPON

/datum/crafting_recipe/stunprod
	name = "Stunprod"
	result = /obj/item/weapon/melee/baton/cattleprod
	reqs = list(/obj/item/weapon/restraints/handcuffs/cable = 1,
				/obj/item/stack/rods = 1,
				/obj/item/device/assembly/igniter = 1)
	time = 40
	category = CAT_WEAPON

/datum/crafting_recipe/teleprod
	name = "Teleprod"
	result = /obj/item/weapon/melee/baton/cattleprod/teleprod
	reqs = list(/obj/item/weapon/restraints/handcuffs/cable = 1,
				/obj/item/stack/rods = 1,
				/obj/item/device/assembly/igniter = 1,
				/obj/item/weapon/ore/bluespace_crystal = 1)
	time = 40
	category = CAT_WEAPON

/datum/crafting_recipe/bola
	name = "Bola"
	result = /obj/item/weapon/restraints/legcuffs/bola
	reqs = list(/obj/item/weapon/restraints/handcuffs/cable = 1,
				/obj/item/stack/sheet/metal = 6)
	time = 20//15 faster than crafting them by hand!
	category= CAT_WEAPON

/datum/crafting_recipe/tailclub
	name = "Tail Club"
	result = /obj/item/weapon/tailclub
	reqs = list(/obj/item/severedtail = 1,
	            /obj/item/stack/sheet/metal = 1)
	time = 40
	category = CAT_WEAPON

/datum/crafting_recipe/tailwhip
	name = "Liz O' Nine Tails"
	result = /obj/item/weapon/melee/chainofcommand/tailwhip
	reqs = list(/obj/item/severedtail = 1,
	            /obj/item/stack/cable_coil = 1)
	time = 40
	category = CAT_WEAPON

/datum/crafting_recipe/ed209
	name = "ED209"
	result = /mob/living/simple_animal/bot/ed209
	reqs = list(/obj/item/robot_suit = 1,
				/obj/item/clothing/head/helmet = 1,
				/obj/item/clothing/suit/armor/vest = 1,
				/obj/item/bodypart/l_leg/robot = 1,
				/obj/item/bodypart/r_leg/robot = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/cable_coil = 1,
				/obj/item/weapon/gun/energy/e_gun/advtaser = 1,
				/obj/item/weapon/stock_parts/cell = 1,
				/obj/item/device/assembly/prox_sensor = 1)
	tools = list(/obj/item/weapon/weldingtool, /obj/item/weapon/screwdriver)
	time = 60
	category = CAT_ROBOT

/datum/crafting_recipe/flamethrower
	name = "Flamethrower"
	result = /obj/item/weapon/flamethrower
	reqs = list(/obj/item/weapon/weldingtool = 1,
				/obj/item/device/assembly/igniter = 1,
				/obj/item/stack/rods = 1)
	parts = list(/obj/item/device/assembly/igniter = 1,
				/obj/item/weapon/weldingtool = 1)
	tools = list(/obj/item/weapon/screwdriver)
	time = 10
	category = CAT_WEAPON

/datum/crafting_recipe/meteorshot
	name = "Meteorshot Shell"
	result = /obj/item/ammo_casing/shotgun/meteorshot
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/obj/item/weapon/rcd_ammo = 1,
				/obj/item/weapon/stock_parts/manipulator = 2)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/crafting_recipe/pulseslug
	name = "Pulse Slug Shell"
	result = /obj/item/ammo_casing/shotgun/pulseslug
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/obj/item/weapon/stock_parts/capacitor/adv = 2,
				/obj/item/weapon/stock_parts/micro_laser/ultra = 1)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/crafting_recipe/dragonsbreath
	name = "Dragonsbreath Shell"
	result = /obj/item/ammo_casing/shotgun/incendiary/dragonsbreath
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,/datum/reagent/phosphorus = 5)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/crafting_recipe/frag12
	name = "FRAG-12 Shell"
	result = /obj/item/ammo_casing/shotgun/frag12
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/datum/reagent/glycerol = 5,
				/datum/reagent/toxin/acid = 5,
				/datum/reagent/toxin/acid/fluacid = 5)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/crafting_recipe/ionslug
	name = "Ion Scatter Shell"
	result = /obj/item/ammo_casing/shotgun/ion
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/obj/item/weapon/stock_parts/micro_laser/ultra = 1,
				/obj/item/weapon/stock_parts/subspace/crystal = 1)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/crafting_recipe/improvisedslug
	name = "Improvised Shotgun Shell"
	result = /obj/item/ammo_casing/shotgun/improvised
	reqs = list(/obj/item/weapon/grenade/chem_grenade = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/cable_coil = 1,
				/datum/reagent/fuel = 10)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/crafting_recipe/improvisedslugoverload
	name = "Overload Improvised Shell"
	result = /obj/item/ammo_casing/shotgun/improvised/overload
	reqs = list(/obj/item/ammo_casing/shotgun/improvised = 1,
				/datum/reagent/blackpowder = 10,
				/datum/reagent/toxin/plasma = 20)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/crafting_recipe/laserslug
	name = "Laser Slug Shell"
	result = /obj/item/ammo_casing/shotgun/laserslug
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/obj/item/weapon/stock_parts/capacitor/adv = 1,
				/obj/item/weapon/stock_parts/micro_laser/high = 1)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/crafting_recipe/ishotgun
	name = "Improvised Shotgun"
	result = /obj/item/weapon/gun/ballistic/revolver/doublebarrel/improvised
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
				/obj/item/pipe = 1,
				/obj/item/weaponcrafting/stock = 1,
				/obj/item/stack/packageWrap = 5)
	tools = list(/obj/item/weapon/screwdriver)
	time = 100
	category = CAT_WEAPON

/datum/crafting_recipe/chainsaw
	name = "Chainsaw"
	result = /obj/item/weapon/twohanded/required/chainsaw
	reqs = list(/obj/item/weapon/circular_saw = 1,
				/obj/item/stack/cable_coil = 1,
				/obj/item/stack/sheet/plasteel = 1)
	tools = list(/obj/item/weapon/weldingtool)
	time = 50
	category = CAT_WEAPON

/datum/crafting_recipe/spear
	name = "Spear"
	result = /obj/item/weapon/twohanded/spear
	reqs = list(/obj/item/weapon/restraints/handcuffs/cable = 1,
				/obj/item/weapon/shard = 1,
				/obj/item/stack/rods = 1)
	time = 40
	category = CAT_WEAPON

/datum/crafting_recipe/spooky_camera
	name = "Camera Obscura"
	result = /obj/item/device/camera/spooky
	time = 15
	reqs = list(/obj/item/device/camera = 1,
				/datum/reagent/water/holywater = 10)
	parts = list(/obj/item/device/camera = 1)
	category = CAT_MISC

/datum/crafting_recipe/skateboard
	name = "Skateboard"
	result = /obj/vehicle/scooter/skateboard
	time = 60
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/rods = 10)
	category = CAT_MISC

/datum/crafting_recipe/scooter
	name = "Scooter"
	result = /obj/vehicle/scooter
	time = 65
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/rods = 12)
	category = CAT_MISC

/datum/crafting_recipe/papersack
	name = "Paper Sack"
	result = /obj/item/weapon/storage/box/papersack
	time = 10
	reqs = list(/obj/item/weapon/paper = 5)
	category = CAT_MISC


/datum/crafting_recipe/chemical_payload
	name = "Chemical Payload (C4)"
	result = /obj/item/weapon/bombcore/chemical
	reqs = list(
		/obj/item/weapon/stock_parts/matter_bin = 1,
		/obj/item/weapon/grenade/plastic/c4 = 1,
		/obj/item/weapon/grenade/chem_grenade = 2
	)
	parts = list(/obj/item/weapon/stock_parts/matter_bin = 1, /obj/item/weapon/grenade/chem_grenade = 2)
	time = 30
	category = CAT_WEAPON

/datum/crafting_recipe/chemical_payload2
	name = "Chemical Payload (gibtonite)"
	result = /obj/item/weapon/bombcore/chemical
	reqs = list(
		/obj/item/weapon/stock_parts/matter_bin = 1,
		/obj/item/weapon/twohanded/required/gibtonite = 1,
		/obj/item/weapon/grenade/chem_grenade = 2
	)
	parts = list(/obj/item/weapon/stock_parts/matter_bin = 1, /obj/item/weapon/grenade/chem_grenade = 2)
	time = 50
	category = CAT_WEAPON

/datum/crafting_recipe/bonearmor
	name = "Bone Armor"
	result = /obj/item/clothing/suit/armor/bone
	time = 30
	reqs = list(/obj/item/stack/sheet/bone = 6)
	category = CAT_PRIMAL

/datum/crafting_recipe/bonetalisman
	name = "Bone Talisman"
	result = /obj/item/clothing/neck/talisman
	time = 20
	reqs = list(/obj/item/stack/sheet/bone = 2,
				 /obj/item/stack/sheet/sinew = 1)
	category = CAT_PRIMAL

/datum/crafting_recipe/bracers
	name = "Bone Bracers"
	result = /obj/item/clothing/gloves/bracer
	time = 20
	reqs = list(/obj/item/stack/sheet/bone = 2,
				 /obj/item/stack/sheet/sinew = 1)
	category = CAT_PRIMAL

/datum/crafting_recipe/skullhelm
	name = "Skull Helmet"
	result = /obj/item/clothing/head/helmet/skull
	time = 30
	reqs = list(/obj/item/stack/sheet/bone = 4)
	category = CAT_PRIMAL

/datum/crafting_recipe/gold_horn
	name = "Golden bike horn"
	result = /obj/item/weapon/bikehorn/golden
	time = 20
	reqs = list(/obj/item/stack/sheet/mineral/bananium = 5,
				/obj/item/weapon/bikehorn)
	category = CAT_MISC

/datum/crafting_recipe/bonedagger
	name = "Bone Dagger"
	result = /obj/item/weapon/kitchen/knife/combat/bone
	time = 20
	reqs = list(/obj/item/stack/sheet/bone = 2)
	category = CAT_PRIMAL

/datum/crafting_recipe/bonespear
	name = "Bone Spear"
	result = /obj/item/weapon/twohanded/bonespear
	time = 30
	reqs = list(/obj/item/stack/sheet/bone = 4,
				 /obj/item/stack/sheet/sinew = 1)
	category = CAT_PRIMAL

/datum/crafting_recipe/boneaxe
	name = "Bone Axe"
	result = /obj/item/weapon/twohanded/fireaxe/boneaxe
	time = 50
	reqs = list(/obj/item/stack/sheet/bone = 6,
				 /obj/item/stack/sheet/sinew = 3)
	category = CAT_PRIMAL

/datum/crafting_recipe/bonfire
	name = "Bonfire"
	time = 60
	reqs = list(/obj/item/weapon/grown/log = 5)
	result = /obj/structure/bonfire
	category = CAT_PRIMAL

/datum/crafting_recipe/smallcarton
	name = "Small Carton"
	result = /obj/item/weapon/reagent_containers/food/drinks/sillycup/smallcarton
	time = 10
	reqs = list(/obj/item/stack/sheet/cardboard = 1)
	category = CAT_MISC
