Config = {}
Config.Locale = "en"
Config.IncludeCash = true -- Include cash in inventory?
Config.IncludeWeapons = true -- Include weapons in inventory?
Config.IncludeAccounts = true -- Include accounts (bank, black money, ...)?
Config.ExcludeAccountsList = {"bank"} -- List of accounts names to exclude from inventory
Config.OpenControl = 289 -- Key for opening inventory. Edit html/js/config.js to change key for closing it.

-- List of item names that will close ui when used
Config.CloseUiItems = {"headbag", "fishingrod", "tunerchip", "binoculars", "gps", "joint", "cigarette", "cigar", "fixkit", "rollingpaper", "cocaine", "meth" , "notepad", "kazikazan", "tablette", "rccar", "armour"}

Config.ShopBlipID = 0
Config.TeknoBlipID = 521
Config.LiquorBlipID = 93
Config.YouToolBlipID = 52
Config.ShopBlipID = 0
Config.WeedStoreBlipID = 140
Config.WeaponShopBlipID = 110


Config.ShopLength = 14
Config.TeknoLength = 14
Config.LiquorLength = 10
Config.YouToolLength = 10
Config.PrisonShopLength = 2
Config.MuhittinShopLength = 10

Config.Color = 4
Config.WeaponColor = 1
Config.Color1 = 24

Config.WeaponLiscence = {x = 12.47, y = -1105.5, z = 29.8}
Config.LicensePrice = 5000

Config.Shops = {
    RegularShop = {
        Locations = {
			{x = 957.37,   y = -2004.35,  z = 29.30},
        },
        Items = {
            {name = 'keycard'},
            {name = 'lockpick'},
            {name = 'hackertablet'},
			{name = 'grip'},
			{name = 'oxycutter'},
			{name = 'flashlight'},
			{name = 'yusuf'},
			{name = 'suppressor'}

			
			
          
        }
    },
	
	RegularShop = {
        Locations = {
			{x = -364.53,   y = -102.72,  z = 38.50},
			{x = -210.51,   y = -1292.47,  z = 30.50},
			{x = 501.78,   y = -1340.75,  z = 27.99},
			{x = 961.39,   y = -960.25,  z = 39.5},
        },
        Items = {
            {name = 'fixkit'},
            {name = 'opona'},
            {name = 'bluespray'},
			{name = 'redspray'},
			{name = 'greenspray'},
			{name = 'orangespray'},
			{name = 'pinkspray'},
			{name = 'purplespray'},
			{name = 'whitespray'},
			{name = 'blackspray'}

			
			
          
        }
    },
	
	Muhittin = {
        Locations = {
			{x = 5.98,   y = -1810.08,  z = 24.60},
        },
        Items = {
			{name = 'yusuf'}
			
          
        }
    },
	
	Tekno = {
        Locations = {
			{x = -656.84,   y = -857.41,  z = 24.49},
			{x = -627.37,   y = -278.51,  z = 35.58},
        },
        Items = {
            {name = 'phone'},
            {name = 'rccar'}
			
          
        }
    },

    RobsLiquor = {
		Locations = {
			{x = 127.88, y = -1284.6,  z = 28.28},
        },
        Items = {
            {name = 'beer'},
            {name = 'wine'},
            {name = 'vodka'},
            {name = 'tequila'},
            {name = 'whisky'},
            {name = 'grand_cru'}
        }
	},

    YouTool = {
        Locations = {
           {x = 373.875,   y = 325.896,  z = 102.566},
			{x = 2557.458,  y = 382.282,  z = 107.622},
			{x = -3038.939, y = 585.954,  z = 6.908},
			{x = -3241.927, y = 1001.462, z = 11.830},
			{x = 547.431,   y = 2671.710, z = 41.156},
			{x = 1961.464,  y = 3740.672, z = 31.343},
			{x = 2678.916,  y = 3280.671, z = 54.241},
            {x = 1729.216,  y = 6414.131, z = 34.037},
            {x = -48.519,   y = -1757.514, z = 28.421},
			{x = 1163.373,  y = -323.801,  z = 68.205},
			{x = -707.501,  y = -914.260,  z = 18.215},
			{x = -1820.523, y = 792.518,   z = 137.118},
            {x = 1698.388,  y = 4924.404,  z = 41.063},
            {x = 25.723,   y = -1346.966, z = 28.497}, 
        },
        Items = {
             {name = 'bread'},
            {name = 'water'},
            {name = 'cigarette'},
            {name = 'lighter'},
            {name = 'contract'},
            {name = 'bolchips'},
            {name = 'energy'},
			{name = 'kazikazan'},
            {name = 'notepad'},
			{name = 'picnic'},
			{name = 'donut'},
			{name = 'redgull'},
			{name = 'james_fishingrod'},
			{name = 'james_fishingbait'}
			
			
			
			
			
            
        }
    },

    PrisonShop = {
        Locations = {
            {x = 318.36, y = -1076.96, z = 29.48},
			{x = 92.58, y = -229.76, z = 54.76},
        },
        Items = {
            {name = 'bandage'},
            {name = 'medkit'},
			{name = 'hydrocodone'}
			
           
        }
    },

    WeaponShop = {
        Locations = {
            { x = -662.180, y = -934.961, z = 20.829 },
            { x = 810.25, y = -2157.60, z = 28.62 },
            { x = 1693.44, y = 3760.16, z = 33.71 },
            { x = -330.24, y = 6083.88, z = 30.45 },
            { x = 252.63, y = -50.00, z = 68.94 },
            { x = 22.09, y = -1107.28, z = 28.80 },
            { x = 2567.69, y = 294.38, z = 107.73 },
            { x = -1117.58, y = 2698.61, z = 17.55 },
            { x = 842.44, y = -1033.42, z = 27.19 },
        },
        Weapons = {
            {name = "WEAPON_BAT", ammo = 1},
			{name = "WEAPON_KNIFE", ammo = 1},
            {name = "WEAPON_PISTOL", ammo = 50},
            {name = "WEAPON_PUMPSHOTGUN", ammo = 30},			
        },
        Ammo = {
            {name = "9mm_rounds", weaponhash = "WEAPON_PISTOL", ammo = 24},
            {name = "shotgun_shells", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12}
        },
        Items = {

        }
    },
}