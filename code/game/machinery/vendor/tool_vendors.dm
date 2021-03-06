
/obj/machinery/vending/assist
	products = list(
		/obj/item/device/assembly/prox_sensor = 10,
		/obj/item/device/assembly/igniter = 10,
		/obj/item/device/assembly/signaler = 10,
		/obj/item/weapon/tool/wirecutters = 5,
		/obj/item/weapon/tool/wirecutters/pliers = 5,
		/obj/item/weapon/cartridge/signal = 10,
		/obj/item/device/lighting/toggleable/flashlight = 5,
		/obj/item/device/assembly/timer = 10,
		)
	product_ads = "Only the finest!;Have some tools.;The most robust equipment.;The finest gear in space!"
	auto_price = FALSE

/obj/machinery/vending/tool
	name = "YouTool"
	desc = "Tools for tools."
	product_slogans = "Tools, Gloves and everything you would need!; Need a belt?; Top quality tools, only here!; Doors shocked again? We have gloves!;Better than the competitors!"
	product_ads = "Reliable!;Highest Quality!;Take a belt!;Colorful cables!;Insulated Gloves, only here!"
	icon_state = "tool"
	icon_deny = "tool-deny"
	products = list(/obj/item/stack/cable_coil/random = 10,
					/obj/item/weapon/tool/crowbar = 5,
					/obj/item/weapon/tool/weldingtool = 5,
					/obj/item/weapon/tool/wirecutters = 3,
					/obj/item/weapon/tool/wirecutters/pliers = 3,
					/obj/item/weapon/tool/wrench = 5,
					/obj/item/weapon/tool/hammer = 5,
					/obj/item/device/scanner/gas = 5,
					/obj/item/device/t_scanner = 5,
					/obj/item/weapon/tool/screwdriver = 5,
					/obj/item/clothing/gloves/insulated/cheap = 2,
					/obj/item/clothing/gloves/insulated = 1,
					/obj/item/weapon/storage/pouch/engineering_tools = 2,
					/obj/item/weapon/storage/pouch/engineering_supply = 2,
					/obj/item/weapon/weldpack/canister = 4,
					/obj/item/weapon/weldpack = 2)
	prices = list(/obj/item/weapon/tool/hammer = 30,
					/obj/item/stack/cable_coil/random = 100,
					/obj/item/weapon/tool/crowbar = 30,
					/obj/item/weapon/tool/weldingtool = 50,
					/obj/item/weapon/tool/wirecutters = 30,
					/obj/item/weapon/tool/wirecutters/pliers = 30,
					/obj/item/weapon/tool/wrench = 30,
					/obj/item/device/scanner/gas = 50,
					/obj/item/device/t_scanner = 50,
					/obj/item/weapon/tool/screwdriver = 30,
					/obj/item/clothing/gloves/insulated/cheap = 80,
					/obj/item/clothing/gloves/insulated = 600,
					/obj/item/weapon/storage/pouch/engineering_tools = 300,
					/obj/item/weapon/storage/pouch/engineering_supply = 600,
					/obj/item/weapon/weldpack/canister = 300,
					/obj/item/weapon/weldpack = 675)

/obj/machinery/vending/engivend
	name = "Guild-Vend"
	desc = "Spare tool vending. What? Did you expect some witty description?"
	product_slogans = "Spare tools for your Engineering needs!;Forgot where we keep mesons again, didn't you?;Need a battery?;You need electronics? I got electronics."
	icon_state = "engivend"
	icon_deny = "engivend-deny"
	products = list(/obj/item/clothing/glasses/powered/meson = 2,
					/obj/item/weapon/tool/multitool = 4,
					/obj/item/weapon/airlock_electronics = 10,
					/obj/item/weapon/circuitboard/apc = 10,
					/obj/item/weapon/airalarm_electronics = 10,
					/obj/item/weapon/cell/large/high = 10,
					/obj/item/weapon/storage/belt/utility = 3,
					/obj/item/weapon/weldpack/canister = 4,
					/obj/item/weapon/weldpack = 2)
	contraband = list(/obj/item/weapon/cell/large/potato = 3)
	auto_price = FALSE

//This one's from bay12
/obj/machinery/vending/engineering
	name = "Artificer's Tool Maker"
	desc = "Everything you need for do-it-yourself station repair."
	product_slogans = "Home project planned? Do it yourself!;Legally, I have to ask you not to use those tools to hack into anything.;Locked door? Tools here!;Big project and you're missing your precious wrench? I bet I can replace it!;The most robust tools on the ship!"
	product_ads = "Best tools!;Cheap!;Reliable!;Do-It-Yourself!"
	icon_state = "engi"
	icon_deny = "engi-deny"
	products = list(/obj/item/clothing/head/hardhat = 4,
					/obj/item/weapon/storage/belt/utility = 4,
					/obj/item/clothing/glasses/powered/meson = 4,
					/obj/item/clothing/gloves/insulated = 4,
					/obj/item/weapon/tool/screwdriver = 12,
					/obj/item/weapon/tool/crowbar = 12,
					/obj/item/weapon/tool/wirecutters = 12,
					/obj/item/weapon/tool/wirecutters/pliers = 6,
					/obj/item/weapon/tool/multitool = 12,
					/obj/item/weapon/tool/hammer = 10,
					/obj/item/weapon/tool/wrench = 12,
					/obj/item/device/t_scanner = 12,
					/obj/item/weapon/cell/large = 8,
					/obj/item/weapon/tool/weldingtool = 8,
					/obj/item/clothing/head/welding = 8,
					/obj/item/weapon/weldpack/canister = 4,
					/obj/item/weapon/weldpack = 2,
					/obj/item/weapon/light/tube = 10,
					/obj/item/clothing/suit/fire = 4,
					/obj/item/weapon/stock_parts/scanning_module = 5,
					/obj/item/weapon/stock_parts/micro_laser = 5,
					/obj/item/weapon/stock_parts/matter_bin = 5,
					/obj/item/weapon/stock_parts/manipulator = 5,
					/obj/item/weapon/stock_parts/console_screen = 5)
	prices = list(/obj/item/clothing/head/hardhat = 4,
					/obj/item/weapon/storage/belt/utility = 150,
					/obj/item/clothing/glasses/powered/meson = 300,
					/obj/item/clothing/gloves/insulated = 600,
					/obj/item/weapon/tool/screwdriver = 30,
					/obj/item/weapon/tool/crowbar = 30,
					/obj/item/weapon/tool/wirecutters = 30,
					/obj/item/weapon/tool/wirecutters/pliers = 30,
					/obj/item/weapon/tool/multitool = 40,
					/obj/item/weapon/tool/hammer = 30,
					/obj/item/weapon/tool/wrench = 40,
					/obj/item/device/t_scanner = 50,
					/obj/item/weapon/cell/large = 500,
					/obj/item/weapon/tool/weldingtool = 40,
					/obj/item/clothing/head/welding = 80,
					/obj/item/weapon/weldpack/canister = 300,
					/obj/item/weapon/weldpack = 675,
					/obj/item/weapon/light/tube = 10,
					/obj/item/clothing/suit/fire = 150,
					/obj/item/weapon/stock_parts/scanning_module = 40,
					/obj/item/weapon/stock_parts/micro_laser = 40,
					/obj/item/weapon/stock_parts/matter_bin = 40,
					/obj/item/weapon/stock_parts/manipulator = 40,
					/obj/item/weapon/stock_parts/console_screen = 40)

//FOR ACTORS GUILD - Containers
/obj/machinery/vending/containers
	name = "Storage King"
	desc = "A container that dispenses containers."
	icon_state = "robotics"
	products = list(/obj/structure/closet/crate/freezer = 2,
					/obj/structure/closet = 3,
					/obj/structure/closet/crate = 3)
	auto_price = FALSE

/obj/machinery/vending/powermat
	name = "Lonestar Power-Mat"
	desc = "Trust is power, and there's no power you can trust like Robustcell."
	product_slogans = "Trust is power, and there's no cell you can trust like Robustcell.;No battery is stronger nor lasts longer.;One that Lasts!;You can't top the copper top!;Tesla doesn't have anything on us!;Don't believe the competitors, Our cells last longer!"
	product_ads = "Robust!;Trustworthy!;Durable!;Robustcell - For your power needs!;Better than the others!;Stronger than the others!"
	icon_state = "powermat"
	products = list(/obj/item/weapon/cell/large = 10,
					/obj/item/weapon/cell/large/high = 10,
					/obj/item/weapon/cell/medium = 15,
					/obj/item/weapon/cell/medium/high = 15,
					/obj/item/weapon/cell/small = 20,
					/obj/item/weapon/cell/small/high = 20)
	contraband = list(/obj/item/weapon/cell/large/super = 5,
						/obj/item/weapon/cell/medium/super = 5,
						/obj/item/weapon/cell/small/super = 5)
	prices = list(/obj/item/weapon/cell/large = 500,
					/obj/item/weapon/cell/large/high = 700,
					/obj/item/weapon/cell/medium = 300,
					/obj/item/weapon/cell/medium/high = 400,
					/obj/item/weapon/cell/small = 100,
					/obj/item/weapon/cell/small/high = 200,
					/obj/item/weapon/cell/large/super = 1200,
					/obj/item/weapon/cell/medium/super = 700,
					/obj/item/weapon/cell/small/super = 350)

/obj/machinery/vending/printomat
	name = "Lonestar Print-Mat"
	desc = "Everything you can imagine (not really) on a disc! Print your own gun TODAY."
	product_slogans = "Print your own gun TODAY!;The future is NOW!;Can't stop the industrial revolution!;Everything you can imagine, RIGHT HERE!;Don't copy that floppy!;Who needs dreams when you can print everything you need?"
	product_ads = "Almost free!;Print it yourself!;Don't copy that floppy!;Industrial Revolution!;Future!;Print your dreams TODAY!;Cheap and reliable!"
	icon_state = "discomat"
	products = list(/obj/item/weapon/computer_hardware/hard_drive/portable = 20,
					 /obj/item/weapon/storage/box/data_disk/basic = 5,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/misc = 20,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/components = 10,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/adv_tools = 5,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/circuits = 5,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/logistics = 2,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/medical = 10,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/computer = 10,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/security = 5,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/guns/cheap_guns = 5,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/guns/armstrong = 2,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/nonlethal_ammo = 10,
					 /obj/item/weapon/computer_hardware/hard_drive/portable/design/powerwork = 3,
					 /obj/item/weapon/circuitboard/autolathe = 3,
					 /obj/item/weapon/circuitboard/vending = 10)
	contraband = list(/obj/item/weapon/computer_hardware/hard_drive/portable/design/ammo_boxes_smallarms = 3)
	prices = list(/obj/item/weapon/computer_hardware/hard_drive/portable = 50,
				 /obj/item/weapon/storage/box/data_disk/basic = 100,
	 			 /obj/item/weapon/computer_hardware/hard_drive/portable/design/misc = 400,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/components = 500,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/adv_tools = 1800,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/circuits = 600,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/logistics = 400,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/medical = 400,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/computer = 500,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/security = 600,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/guns/cheap_guns = 3000,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/guns/armstrong = 2000,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/nonlethal_ammo = 700,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/powerwork = 600,
				 /obj/item/weapon/circuitboard/autolathe = 700,
				 /obj/item/weapon/circuitboard/vending = 500,
				 /obj/item/weapon/computer_hardware/hard_drive/portable/design/ammo_boxes_smallarms = 1000)

//This one's from bay12
/obj/machinery/vending/plasmaresearch
	name = "Toximate 3000"
	desc = "All the fine parts you need in one vending machine!"
	products = list(/obj/item/clothing/under/rank/scientist = 6,
					/obj/item/clothing/suit/bio_suit = 6,
					/obj/item/clothing/head/bio_hood = 6,
					/obj/item/device/transfer_valve = 6,
					/obj/item/device/assembly/timer = 6,
					/obj/item/device/assembly/signaler = 6,
					/obj/item/device/assembly/prox_sensor = 6,
					/obj/item/device/assembly/igniter = 6)
	auto_price = FALSE

//This one's from bay12
/obj/machinery/vending/robotics
	name = "Robotech Deluxe"
	desc = "All the tools you need to create your own robot army."
	product_slogans = "Build your robot army TODAY!;How about a mech?;You know you need that Durand!;Lost your jumpsuit again?;Let's implant them, we both know they need it."
	icon_state = "robotics"
	icon_deny = "robotics-deny"
	products = list(/obj/item/clothing/suit/storage/toggle/labcoat = 4,
					/obj/item/clothing/under/rank/roboticist = 4,
					/obj/item/stack/cable_coil = 4,
					/obj/item/device/flash = 4,
					/obj/item/weapon/cell/large/high = 12,
					/obj/item/device/assembly/prox_sensor = 3,
					/obj/item/device/assembly/signaler = 3,
					/obj/item/device/scanner/health = 3,
					/obj/item/weapon/tool/scalpel = 2,
					/obj/item/weapon/tool/saw/circular = 2,
					/obj/item/weapon/tank/anesthetic = 2,
					/obj/item/clothing/mask/breath/medical = 5,
					/obj/item/weapon/tool/screwdriver = 5,
					/obj/item/weapon/tool/crowbar = 5,
					/obj/item/weapon/weldpack/canister = 2,
					/obj/item/weapon/weldpack = 1,
					//Ripley
					/obj/item/device/kit/paint/ripley = 3,
					/obj/item/device/kit/paint/ripley/death = 3,
					/obj/item/device/kit/paint/ripley/flames_red = 3,
					/obj/item/device/kit/paint/ripley/flames_blue = 3,
					/obj/item/device/kit/paint/ripley/syndieripley = 3,
					/obj/item/device/kit/paint/ripley/titan = 3,
					/obj/item/device/kit/paint/ripley/glass = 3,
					/obj/item/device/kit/paint/ripley/orange_box = 3,
					/obj/item/device/kit/paint/ripley/clark = 3,
					/obj/item/device/kit/paint/ripley/clark_orange = 3,
					/obj/item/device/kit/paint/ripley/clark_veteran = 3,
					//Ody
					/obj/item/device/kit/paint/odysseus = 3,
					/obj/item/device/kit/paint/odysseus/blue_racer = 3,
					/obj/item/device/kit/paint/odysseus/yellow_racer = 3,
					/obj/item/device/kit/paint/odysseus/murderody = 3,
					//Durand
					/obj/item/device/kit/paint/durand = 3,
					/obj/item/device/kit/paint/durand/seraph = 3,
					/obj/item/device/kit/paint/durand/gator = 3,
					/obj/item/device/kit/paint/durand/dollhouse = 3,
					//Gygax
					/obj/item/device/kit/paint/gygax/darkgygax = 3,
					/obj/item/device/kit/paint/gygax/darkgygax_old = 3,
					/obj/item/device/kit/paint/gygax/recitence = 3,
					/obj/item/device/kit/paint/gygax/classic = 3,
					/obj/item/device/kit/paint/gygax/pobeda = 3,
					//Phazon
					/obj/item/device/kit/paint/phazon = 3,
					/obj/item/device/kit/paint/phazon/plazmus = 3,
					/obj/item/device/kit/paint/phazon/imperion = 3,
					/obj/item/device/kit/paint/phazon/janus = 3)
	contraband = list(/obj/item/device/kit/paint/durand/phazon = 1,
					/obj/item/device/kit/paint/odysseus/mime = 1,
					/obj/item/device/kit/paint/gygax = 1,
					/obj/item/device/kit/paint/ripley/clark_spider = 1)

	auto_price = FALSE

