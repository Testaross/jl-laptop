
ESX = exports["ocean_core"]:getSharedObject()
local MaxPools = { -- Contains all the the amount of contracts avaible every restart, once a contract has started or declined it gets back into the pool
    ["D"] = 25,
    ["C"] = 20,
    ["B"] = 15,
    ["A"] = 10,
    ["A+"] = 5,
    ["S"] = 3,
    ["S+"] = 1,
}

local cars = {
    ["D"] = {},
    ["C"] = {},
    ["B"] = {},
    ["A"] = {},
    ["A+"] = {},
    ["S"] = {},
    ["S+"] = {},
}




Vehicles = {
    --- Compacts
    ['asbo'] = {
        ['name'] = 'Asbo',
        ['brand'] = 'Maxwell',
        ['model'] = 'asbo',
        ['price'] = 4000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `asbo`,
        ['shop'] = {'pdm'},
        ["tier"] = "D"
    },
    ['blista'] = {
        ['name'] = 'Blista',
        ['brand'] = 'Dinka',
        ['model'] = 'blista',
        ['price'] = 13000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `blista`,
        ['shop'] = 'pdm',
    },
    ['brioso'] = {
        ['name'] = 'Brioso R/A',
        ['brand'] = 'Grotti',
        ['model'] = 'brioso',
        ['price'] = 20000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `brioso`,
        ['shop'] = 'pdm',
    },
    ['club'] = {
        ['name'] = 'Club',
        ['brand'] = 'BF',
        ['model'] = 'club',
        ['price'] = 8000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `club`,
        ['shop'] = 'pdm',
        ["tier"] = "D",
    },
    ['dilettante'] = {
        ['name'] = 'Dilettante',
        ['brand'] = 'Karin',
        ['model'] = 'dilettante',
        ['price'] = 9000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `dilettante`,
        ['shop'] = 'pdm',
    },
    ['dilettante2'] = {
        ['name'] = 'Dilettante Patrol',
        ['brand'] = 'Karin',
        ['model'] = 'dilettante2',
        ['price'] = 12000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `dilettante2`,
        ['shop'] = 'pdm',
    },
    ['kanjo'] = {
        ['name'] = 'Blista Kanjo',
        ['brand'] = 'Dinka',
        ['model'] = 'kanjo',
        ['price'] = 12000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `kanjo`,
        ['shop'] = 'pdm',
    },
    ['issi2'] = {
        ['name'] = 'Issi',
        ['brand'] = 'Weeny',
        ['model'] = 'issi2',
        ['price'] = 7000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `issi2`,
        ['shop'] = 'pdm',
    },
    ['issi3'] = {
        ['name'] = 'Issi Classic',
        ['brand'] = 'Weeny',
        ['model'] = 'issi3',
        ['price'] = 5000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `issi3`,
        ['shop'] = 'pdm',
    },
    ['issi4'] = {                            --DLC
        ['name'] = 'Issi Arena',
        ['brand'] = 'Weeny',
        ['model'] = 'issi4',
        ['price'] = 80000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `issi4`,
        ['shop'] = 'pdm',
        
    },
    ['issi5'] = {                            --DLC
        ['name'] = 'Issi Arena',
        ['brand'] = 'Weeny',
        ['model'] = 'issi5',
        ['price'] = 80000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `issi5`,
        ['shop'] = 'pdm',
    },
    ['issi6'] = {                            --DLC
        ['name'] = 'Issi Arena',
        ['brand'] = 'Weeny',
        ['model'] = 'issi6',
        ['price'] = 80000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `issi6`,
        ['shop'] = 'pdm',
    },
    ['panto'] = {
        ['name'] = 'Panto',
        ['brand'] = 'Benefactor',
        ['model'] = 'panto',
        ['price'] = 3200,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `panto`,
        ['shop'] = 'pdm',
    },
    ['prairie'] = {
        ['name'] = 'Prairie',
        ['brand'] = 'Bollokan',
        ['model'] = 'prairie',
        ['price'] = 30000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `prairie`,
        ['shop'] = 'pdm',
    },
    ['rhapsody'] = {
        ['name'] = 'Rhapsody',
        ['brand'] = 'Declasse',
        ['model'] = 'rhapsody',
        ['price'] = 10000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `rhapsody`,
        ['shop'] = 'pdm',
    },
    ['brioso2'] = {
        ['name'] = 'Brioso 300',
        ['brand'] = 'Grotti',
        ['model'] = 'brioso2',
        ['price'] = 12000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `brioso2`,
        ['shop'] = 'pdm',
    },
    ['weevil'] = {
        ['name'] = 'Weevil',
        ['brand'] = 'BF',
        ['model'] = 'weevil',
        ['price'] = 9000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `weevil`,
        ['shop'] = 'pdm',
    },
    --- Coupes
    ['cogcabrio'] = {
        ['name'] = 'Cognoscenti Cabrio',
        ['brand'] = 'Enus',
        ['model'] = 'cogcabrio',
        ['price'] = 30000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `cogcabrio`,
        ['shop'] = 'pdm',
    },
    ['exemplar'] = {
        ['name'] = 'Exemplar',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'exemplar',
        ['price'] = 40000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `exemplar`,
        ['shop'] = 'pdm',
        ["tier"] = "C",
    },
    ['f620'] = {
        ['name'] = 'F620',
        ['brand'] = 'Ocelot',
        ['model'] = 'f620',
        ['price'] = 32500,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `f620`,
        ['shop'] = 'pdm',
        ["tier"] = "C",
    },
    ['felon'] = {
        ['name'] = 'Felon',
        ['brand'] = 'Lampadati',
        ['model'] = 'felon',
        ['price'] = 31000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `felon`,
        ['shop'] = 'pdm',
        ["tier"] = "C",
    },
    ['felon2'] = {
        ['name'] = 'Felon GT',
        ['brand'] = 'Lampadati',
        ['model'] = 'felon2',
        ['price'] = 37000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `felon2`,
        ['shop'] = 'pdm',
    },
    ['jackal'] = {
        ['name'] = 'Jackal',
        ['brand'] = 'Ocelot',
        ['model'] = 'jackal',
        ['price'] = 19000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `jackal`,
        ['shop'] = 'pdm',
    },
    ['oracle'] = {
        ['name'] = 'Oracle',
        ['brand'] = 'Ubermacht',
        ['model'] = 'oracle',
        ['price'] = 22000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `oracle`,
        ['shop'] = 'pdm',
    },
    ['oracle2'] = {
        ['name'] = 'Oracle XS',
        ['brand'] = 'Übermacht',
        ['model'] = 'oracle2',
        ['price'] = 28000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `oracle2`,
        ['shop'] = 'pdm',
    },
    ['sentinel'] = {
        ['name'] = 'Sentinel',
        ['brand'] = 'Übermacht',
        ['model'] = 'sentinel',
        ['price'] = 30000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `sentinel`,
        ['shop'] = 'pdm',
    },
    ['sentinel2'] = {
        ['name'] = 'Sentinel XS',
        ['brand'] = 'Übermacht',
        ['model'] = 'sentinel2',
        ['price'] = 33000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `sentinel2`,
        ['shop'] = 'pdm',
    },
    ['windsor'] = {
        ['name'] = 'Windsor',
        ['brand'] = 'Enus',
        ['model'] = 'windsor',
        ['price'] = 27000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `windsor`,
        ['shop'] = 'pdm',
    },
    ['windsor2'] = {
        ['name'] = 'Windsor Drop',
        ['brand'] = 'Enus',
        ['model'] = 'windsor2',
        ['price'] = 34000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `windsor2`,
        ['shop'] = 'pdm',
    },
    ['zion'] = {
        ['name'] = 'Zion',
        ['brand'] = 'Übermacht',
        ['model'] = 'zion',
        ['price'] = 22000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `zion`,
        ['shop'] = 'pdm',
    },
    ['zion2'] = {
        ['name'] = 'Zion Cabrio',
        ['brand'] = 'Übermacht',
        ['model'] = 'zion2',
        ['price'] = 28000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `zion2`,
        ['shop'] = 'pdm',
    },
    ['previon'] = {            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Previon',
        ['brand'] = 'Karin',
        ['model'] = 'previon',
        ['price'] = 149000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `previon`,
        ['shop'] = 'pdm',
        ["tier"] = "B",
    },
    ['champion'] = {        --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Champion',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'champion',
        ['price'] = 205000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `champion`,
        ['shop'] = 'pdm',
        ["tier"] = "B",
    },
    ['ignus'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Ignus',
        ['brand'] = 'Pegassi',
        ['model'] = 'ignus',
        ['price'] = 1120000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `ignus`,
        ['shop'] = 'pdm',
        ["tier"] = "B",
    },
    ['zeno'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Zeno',
        ['brand'] = 'Overflod',
        ['model'] = 'zeno',
        ['price'] = 1350000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `zeno`,
        ['shop'] = 'pdm',
        ["tier"] = "B",
    },
    --- Cycles
    ['bmx'] = {
        ['name'] = 'BMX',
        ['brand'] = 'Bike',
        ['model'] = 'bmx',
        ['price'] = 160,
        ['category'] = 'cycles',
        ['categoryLabel'] = 'Cycles',
        ['hash'] = `bmx`,
        ['shop'] = 'pdm',
    },
    ['cruiser'] = {
        ['name'] = 'Cruiser',
        ['brand'] = 'Bike',
        ['model'] = 'cruiser',
        ['price'] = 510,
        ['category'] = 'cycles',
        ['categoryLabel'] = 'Cycles',
        ['hash'] = `cruiser`,
        ['shop'] = 'pdm',
    },
    ['fixter'] = {
        ['name'] = 'Fixter',
        ['brand'] = 'Bike',
        ['model'] = 'fixter',
        ['price'] = 225,
        ['category'] = 'cycles',
        ['categoryLabel'] = 'Cycles',
        ['hash'] = `fixter`,
        ['shop'] = 'pdm',
    },
    ['scorcher'] = {
        ['name'] = 'Scorcher',
        ['brand'] = 'Bike',
        ['model'] = 'scorcher',
        ['price'] = 280,
        ['category'] = 'cycles',
        ['categoryLabel'] = 'Cycles',
        ['hash'] = `scorcher`,
        ['shop'] = 'pdm',
    },
    ['tribike'] = {
        ['name'] = 'Tri Bike',
        ['brand'] = 'Bike',
        ['model'] = 'tribike',
        ['price'] = 500,
        ['category'] = 'cycles',
        ['categoryLabel'] = 'Cycles',
        ['hash'] = `tribike`,
        ['shop'] = 'pdm',
    },
    ['tribike2'] = {
        ['name'] = 'Tri Bike 2',
        ['brand'] = 'Bike',
        ['model'] = 'tribike2',
        ['price'] = 700,
        ['category'] = 'cycles',
        ['categoryLabel'] = 'Cycles',
        ['hash'] = `tribike2`,
        ['shop'] = 'pdm',
    },
    ['tribike3'] = {
        ['name'] = 'Tri Bike 3',
        ['brand'] = 'Bike',
        ['model'] = 'tribike3',
        ['price'] = 520,
        ['category'] = 'cycles',
        ['categoryLabel'] = 'Cycles',
        ['hash'] = `tribike3`,
        ['shop'] = 'pdm',
    },
    --- Motorcycles
    ['akuma'] = {
        ['name'] = 'Akuma',
        ['brand'] = 'Dinka',
        ['model'] = 'akuma',
        ['price'] = 55000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `akuma`,
        ['shop'] = 'pdm',
    },
    ['avarus'] = {
        ['name'] = 'Avarus',
        ['brand'] = 'LCC',
        ['model'] = 'avarus',
        ['price'] = 20000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `avarus`,
        ['shop'] = 'pdm',
    },
    ['bagger'] = {
        ['name'] = 'Bagger',
        ['brand'] = 'WMC',
        ['model'] = 'bagger',
        ['price'] = 13500,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `bagger`,
        ['shop'] = 'pdm',
    },
    ['bati'] = {
        ['name'] = 'Bati 801',
        ['brand'] = 'Pegassi',
        ['model'] = 'bati',
        ['price'] = 24000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `bati`,
        ['shop'] = 'pdm',
    },
    ['bati2'] = {
        ['name'] = 'Bati 801RR',
        ['brand'] = 'Pegassi',
        ['model'] = 'bati2',
        ['price'] = 19000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `bati2`,
        ['shop'] = 'pdm',
    },
    ['bf400'] = {
        ['name'] = 'BF400',
        ['brand'] = 'Nagasaki',
        ['model'] = 'bf400',
        ['price'] = 22000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `bf400`,
        ['shop'] = 'pdm',
    },
    ['carbonrs'] = {
        ['name'] = 'Carbon RS',
        ['brand'] = 'Nagasaki',
        ['model'] = 'carbonrs',
        ['price'] = 22000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `carbonrs`,
        ['shop'] = 'pdm',
    },
    ['chimera'] = {
        ['name'] = 'Chimera',
        ['brand'] = 'Nagasaki',
        ['model'] = 'chimera',
        ['price'] = 21000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `chimera`,
        ['shop'] = 'pdm',
    },
    ['cliffhanger'] = {
        ['name'] = 'Cliffhanger',
        ['brand'] = 'Western',
        ['model'] = 'cliffhanger',
        ['price'] = 28500,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `cliffhanger`,
        ['shop'] = 'pdm',
    },
    ['daemon'] = {
        ['name'] = 'Daemon',
        ['brand'] = 'WMC',
        ['model'] = 'daemon',
        ['price'] = 14000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `daemon`,
        ['shop'] = 'pdm',
    },
    ['daemon2'] = {
        ['name'] = 'Daemon Custom',
        ['brand'] = 'Western',
        ['model'] = 'daemon2',
        ['price'] = 23000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `daemon2`,
        ['shop'] = 'pdm',
    },
    ['defiler'] = {
        ['name'] = 'Defiler',
        ['brand'] = 'Shitzu',
        ['model'] = 'defiler',
        ['price'] = 30000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `defiler`,
        ['shop'] = 'pdm',
    },
    ['deathbike'] = {                            --DLC
        ['name'] = 'deathbike',
        ['brand'] = 'deathbike',
        ['model'] = 'deathbike',
        ['price'] = 30000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `deathbike`,
        ['shop'] = 'pdm',
    },
    ['deathbike2'] = {                            --DLC
        ['name'] = 'deathbike2',
        ['brand'] = 'deathbike',
        ['model'] = 'deathbike2',
        ['price'] = 30000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `deathbike2`,
        ['shop'] = 'pdm',
    },
    ['deathbike3'] = {                            --DLC
        ['name'] = 'deathbike3',
        ['brand'] = 'deathbike',
        ['model'] = 'deathbike3',
        ['price'] = 30000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `deathbike3`,
        ['shop'] = 'pdm',
    },
    ['diablous'] = {
        ['name'] = 'Diablous',
        ['brand'] = 'Principe',
        ['model'] = 'diablous',
        ['price'] = 30000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `diablous`,
        ['shop'] = 'pdm',
    },
    ['diablous2'] = {
        ['name'] = 'Diablous Custom',
        ['brand'] = 'Principe',
        ['model'] = 'diablous2',
        ['price'] = 38000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `diablous2`,
        ['shop'] = 'pdm',
    },
    ['double'] = {
        ['name'] = 'Double-T',
        ['brand'] = 'Dinka',
        ['model'] = 'double',
        ['price'] = 28000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `double`,
        ['shop'] = 'pdm',
    },
    ['enduro'] = {
        ['name'] = 'Enduro',
        ['brand'] = 'Dinka',
        ['model'] = 'enduro',
        ['price'] = 5500,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `enduro`,
        ['shop'] = 'pdm',
    },
    ['esskey'] = {
        ['name'] = 'Esskey',
        ['brand'] = 'Pegassi',
        ['model'] = 'esskey',
        ['price'] = 12000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `esskey`,
        ['shop'] = 'pdm',
    },
    ['faggio'] = {
        ['name'] = 'Faggio Sport',
        ['brand'] = 'Pegassi',
        ['model'] = 'faggio',
        ['price'] = 2000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `faggio`,
        ['shop'] = 'pdm',
    },
    ['faggio2'] = {
        ['name'] = 'Faggio',
        ['brand'] = 'Pegassi',
        ['model'] = 'faggio2',
        ['price'] = 1900,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `faggio2`,
        ['shop'] = 'pdm',
    },
    ['faggio3'] = {
        ['name'] = 'Faggio Mod',
        ['brand'] = 'Pegassi',
        ['model'] = 'faggio3',
        ['price'] = 2500,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `faggio3`,
        ['shop'] = 'pdm',
    },
    ['fcr'] = {
        ['name'] = 'FCR 1000',
        ['brand'] = 'Pegassi',
        ['model'] = 'fcr',
        ['price'] = 5000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `fcr`,
        ['shop'] = 'pdm',
    },
    ['fcr2'] = {
        ['name'] = 'FCR 1000 Custom',
        ['brand'] = 'Pegassi',
        ['model'] = 'fcr2',
        ['price'] = 19000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `fcr2`,
        ['shop'] = 'pdm',
    },
    ['gargoyle'] = {
        ['name'] = 'Gargoyle',
        ['brand'] = 'Western',
        ['model'] = 'gargoyle',
        ['price'] = 32000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `gargoyle`,
        ['shop'] = 'pdm',
    },
    ['hakuchou'] = {
        ['name'] = 'Hakuchou',
        ['brand'] = 'Shitzu',
        ['model'] = 'hakuchou',
        ['price'] = 17000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `hakuchou`,
        ['shop'] = 'pdm',
    },
    ['hakuchou2'] = {
        ['name'] = 'Hakuchou Drag',
        ['brand'] = 'Shitzu',
        ['model'] = 'hakuchou2',
        ['price'] = 45000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `hakuchou2`,
        ['shop'] = 'pdm',
    },
    ['hexer'] = {
        ['name'] = 'Hexer',
        ['brand'] = 'LCC',
        ['model'] = 'hexer',
        ['price'] = 16000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `hexer`,
        ['shop'] = 'pdm',
    },
    ['innovation'] = {
        ['name'] = 'Innovation',
        ['brand'] = 'LLC',
        ['model'] = 'innovation',
        ['price'] = 33500,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `innovation`,
        ['shop'] = 'pdm',
    },
    ['lectro'] = {
        ['name'] = 'Lectro',
        ['brand'] = 'Principe',
        ['model'] = 'lectro',
        ['price'] = 28000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `lectro`,
        ['shop'] = 'pdm',
    },
    ['manchez'] = {
        ['name'] = 'Manchez',
        ['brand'] = 'Maibatsu',
        ['model'] = 'manchez',
        ['price'] = 8300,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `manchez`,
        ['shop'] = 'pdm',
    },
    ['nemesis'] = {
        ['name'] = 'Nemesis',
        ['brand'] = 'Principe',
        ['model'] = 'nemesis',
        ['price'] = 20000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `nemesis`,
        ['shop'] = 'pdm',
    },
    ['nightblade'] = {
        ['name'] = 'Nightblade',
        ['brand'] = 'WMC',
        ['model'] = 'nightblade',
        ['price'] = 23000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `nightblade`,
        ['shop'] = 'pdm',
    },
    ['oppressor'] = {
        ['name'] = 'Oppressor',
        ['brand'] = 'Pegassi',
        ['model'] = 'oppressor',
        ['price'] = 9999999,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `oppressor`,
        ['shop'] = 'luxury',
    },
    ['pcj'] = {
        ['name'] = 'PCJ-600',
        ['brand'] = 'Shitzu',
        ['model'] = 'pcj',
        ['price'] = 15000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `pcj`,
        ['shop'] = 'pdm',
    },
    ['ratbike'] = {
        ['name'] = 'Rat Bike',
        ['brand'] = 'Western',
        ['model'] = 'ratbike',
        ['price'] = 3000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `ratbike`,
        ['shop'] = 'pdm',
    },
    ['ruffian'] = {
        ['name'] = 'Ruffian',
        ['brand'] = 'Pegassi',
        ['model'] = 'ruffian',
        ['price'] = 25000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `ruffian`,
        ['shop'] = 'pdm',
    },
    ['sanchez'] = {
        ['name'] = 'Sanchez Livery',
        ['brand'] = 'Maibatsu',
        ['model'] = 'sanchez',
        ['price'] = 5300,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `sanchez`,
        ['shop'] = 'pdm',
    },
    ['sanchez2'] = {
        ['name'] = 'Sanchez',
        ['brand'] = 'Maibatsu',
        ['model'] = 'sanchez2',
        ['price'] = 5300,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `sanchez2`,
        ['shop'] = 'pdm',
    },
    ['sanctus'] = {
        ['name'] = 'Sanctus',
        ['brand'] = 'LCC',
        ['model'] = 'sanctus',
        ['price'] = 35000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `sanctus`,
        ['shop'] = 'pdm',
    },
    ['shotaro'] = {
        ['name'] = 'Shotaro Concept',
        ['brand'] = 'Nagasaki',
        ['model'] = 'shotaro',
        ['price'] = 320000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `shotaro`,
        ['shop'] = 'pdm',
    },
    ['sovereign'] = {
        ['name'] = 'Sovereign',
        ['brand'] = 'WMC',
        ['model'] = 'sovereign',
        ['price'] = 8000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `sovereign`,
        ['shop'] = 'pdm',
    },
    ['stryder'] = {
        ['name'] = 'Stryder',
        ['brand'] = 'Nagasaki',
        ['model'] = 'stryder',
        ['price'] = 50000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `stryder`,
        ['shop'] = 'pdm',
    },
    ['thrust'] = {
        ['name'] = 'Thrust',
        ['brand'] = 'Dinka',
        ['model'] = 'thrust',
        ['price'] = 22000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `thrust`,
        ['shop'] = 'pdm',
    },
    ['vader'] = {
        ['name'] = 'Vader',
        ['brand'] = 'Shitzu',
        ['model'] = 'vader',
        ['price'] = 7200,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `vader`,
        ['shop'] = 'pdm',
    },
    ['vindicator'] = {
        ['name'] = 'Vindicator',
        ['brand'] = 'Dinka',
        ['model'] = 'vindicator',
        ['price'] = 19000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `vindicator`,
        ['shop'] = 'pdm',
    },
    ['vortex'] = {
        ['name'] = 'Vortex',
        ['brand'] = 'Pegassi',
        ['model'] = 'vortex',
        ['price'] = 31000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `vortex`,
        ['shop'] = 'pdm',
    },
    ['wolfsbane'] = {
        ['name'] = 'Wolfsbane',
        ['brand'] = 'Western',
        ['model'] = 'wolfsbane',
        ['price'] = 14000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `wolfsbane`,
        ['shop'] = 'pdm',
    },
    ['zombiea'] = {
        ['name'] = 'Zombie Bobber',
        ['brand'] = 'Western',
        ['model'] = 'zombiea',
        ['price'] = 28000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `zombiea`,
        ['shop'] = 'pdm',
    },
    ['zombieb'] = {
        ['name'] = 'Zombie Chopper',
        ['brand'] = 'Western',
        ['model'] = 'zombieb',
        ['price'] = 27000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `zombieb`,
        ['shop'] = 'pdm',
    },
    ['manchez2'] = {
        ['name'] = 'Manchez',
        ['brand'] = 'Maibatsu',
        ['model'] = 'manchez2',
        ['price'] = 14000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `manchez2`,
        ['shop'] = 'pdm',
    },
    ['shinobi'] = {        --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Shinobi',
        ['brand'] = 'Nagasaki',
        ['model'] = 'shinobi',
        ['price'] = 25000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `shinobi`,
        ['shop'] = 'pdm',
    },
    ['reever'] = {        --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Reever',
        ['brand'] = 'Western',
        ['model'] = 'reever',
        ['price'] = 25000,
        ['category'] = 'motorcycles',
        ['categoryLabel'] = 'Motorcycles',
        ['hash'] = `reever`,
        ['shop'] = 'pdm',
    },
    --- Muscle
    ['blade'] = {
        ['name'] = 'Blade',
        ['brand'] = 'Vapid',
        ['model'] = 'blade',
        ['price'] = 23500,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `blade`,
        ['shop'] = 'pdm',
    },
    ['buccaneer'] = {
        ['name'] = 'Buccaneer',
        ['brand'] = 'Albany',
        ['model'] = 'buccaneer',
        ['price'] = 22500,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `buccaneer`,
        ['shop'] = 'pdm',
    },
    ['buccaneer2'] = {
        ['name'] = 'Buccaneer Rider',
        ['brand'] = 'Albany',
        ['model'] = 'buccaneer2',
        ['price'] = 24500,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `buccaneer2`,
        ['shop'] = 'pdm',
    },
    ['chino'] = {
        ['name'] = 'Chino',
        ['brand'] = 'Vapid',
        ['model'] = 'chino',
        ['price'] = 5000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `chino`,
        ['shop'] = 'pdm',
    },
    ['chino2'] = {
        ['name'] = 'Chino Luxe',
        ['brand'] = 'Vapid',
        ['model'] = 'chino2',
        ['price'] = 8000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `chino2`,
        ['shop'] = 'pdm',
    },
    ['clique'] = {                            --DLC
        ['name'] = 'Clique',
        ['brand'] = 'Vapid',
        ['model'] = 'clique',
        ['price'] = 20000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `clique`,
        ['shop'] = 'pdm',
    },
    ['coquette3'] = {
        ['name'] = 'Coquette BlackFin',
        ['brand'] = 'Invetero',
        ['model'] = 'coquette3',
        ['price'] = 180000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `coquette3`,
        ['shop'] = 'pdm',
    },
    ['deviant'] = {                            --DLC
        ['name'] = 'Deviant',
        ['brand'] = 'Schyster',
        ['model'] = 'deviant',
        ['price'] = 70000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `deviant`,
        ['shop'] = 'pdm',
    },
    ['dominator'] = {
        ['name'] = 'Dominator',
        ['brand'] = 'Vapid',
        ['model'] = 'dominator',
        ['price'] = 62500,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `dominator`,
        ['shop'] = 'pdm',
    },
    ['dominator2'] = {
        ['name'] = 'Pißwasser Dominator',
        ['brand'] = 'Vapid',
        ['model'] = 'dominator2',
        ['price'] = 50000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `dominator2`,
        ['shop'] = 'pdm',
    },
    ['dominator3'] = {
        ['name'] = 'Dominator GTX',
        ['brand'] = 'Vapid',
        ['model'] = 'dominator3',
        ['price'] = 70000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `dominator3`,
        ['shop'] = 'pdm',
    },
    ['dominator4'] = {                            --DLC
        ['name'] = 'Dominator Arena',
        ['brand'] = 'Vapid',
        ['model'] = 'dominator4',
        ['price'] = 200000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `dominator4`,
        ['shop'] = 'pdm',
    },
    ['dominator7'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Dominator ASP',
        ['brand'] = 'Vapid',
        ['model'] = 'dominator7',
        ['price'] = 110000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `dominator7`,
        ['shop'] = 'pdm',
    },
    ['dominator8'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Dominator GTT',
        ['brand'] = 'Vapid',
        ['model'] = 'dominator8',
        ['price'] = 80000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `dominator8`,
        ['shop'] = 'pdm',
    },
    ['dukes'] = {
        ['name'] = 'Dukes',
        ['brand'] = 'Imponte',
        ['model'] = 'dukes',
        ['price'] = 23500,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `dukes`,
        ['shop'] = 'pdm',
    },
    ['dukes2'] = {
        ['name'] = 'Dukes Nightrider',
        ['brand'] = 'Imponte',
        ['model'] = 'dukes2',
        ['price'] = 60000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `dukes2`,
        ['shop'] = 'pdm',
    },
    ['dukes3'] = {
        ['name'] = 'Beater Dukes',
        ['brand'] = 'Imponte',
        ['model'] = 'dukes3',
        ['price'] = 45000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `dukes3`,
        ['shop'] = 'pdm',
    },
    ['faction'] = {
        ['name'] = 'Faction',
        ['brand'] = 'Willard',
        ['model'] = 'faction',
        ['price'] = 17000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `faction`,
        ['shop'] = 'pdm',
    },
    ['faction2'] = {
        ['name'] = 'Faction Rider',
        ['brand'] = 'Willard',
        ['model'] = 'faction2',
        ['price'] = 19000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `faction2`,
        ['shop'] = 'pdm',
    },
    ['faction3'] = {
        ['name'] = 'Faction Custom Donk',
        ['brand'] = 'Willard',
        ['model'] = 'faction3',
        ['price'] = 35000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `faction3`,
        ['shop'] = 'pdm',
    },
    ['ellie'] = {
        ['name'] = 'Ellie',
        ['brand'] = 'Vapid',
        ['model'] = 'ellie',
        ['price'] = 42250,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `ellie`,
        ['shop'] = 'pdm',
    },
    ['gauntlet'] = {
        ['name'] = 'Gauntlet',
        ['brand'] = 'Bravado',
        ['model'] = 'gauntlet',
        ['price'] = 28500,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `gauntlet`,
        ['shop'] = 'pdm',
    },
    ['gauntlet2'] = {
        ['name'] = 'Redwood Gauntlet',
        ['brand'] = 'Bravado',
        ['model'] = 'gauntlet2',
        ['price'] = 70000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `gauntlet2`,
        ['shop'] = 'pdm',
    },
    ['gauntlet3'] = {                            --DLC
        ['name'] = 'Classic Gauntlet',
        ['brand'] = 'Bravado',
        ['model'] = 'gauntlet3',
        ['price'] = 75000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `gauntlet3`,
        ['shop'] = 'pdm',
    },
    ['gauntlet4'] = {                            --DLC
        ['name'] = 'Gauntlet Hellfire',
        ['brand'] = 'Bravado',
        ['model'] = 'gauntlet4',
        ['price'] = 80000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `gauntlet4`,
        ['shop'] = 'pdm',
    },
    ['gauntlet5'] = {
        ['name'] = 'Gauntlet Classic Custom',
        ['brand'] = 'Bravado',
        ['model'] = 'gauntlet5',
        ['price'] = 120000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `gauntlet5`,
        ['shop'] = 'pdm',
    },
    ['hermes'] = {
        ['name'] = 'Hermes',
        ['brand'] = 'Albany',
        ['model'] = 'hermes',
        ['price'] = 535000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `hermes`,
        ['shop'] = 'pdm',
    },
    ['hotknife'] = {
        ['name'] = 'Hotknife',
        ['brand'] = 'Vapid',
        ['model'] = 'hotknife',
        ['price'] = 90000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `hotknife`,
        ['shop'] = 'pdm',
    },
    ['hustler'] = {
        ['name'] = 'Hustler',
        ['brand'] = 'Vapid',
        ['model'] = 'hustler',
        ['price'] = 95000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `hustler`,
        ['shop'] = 'pdm',
    },
    ['impaler'] = {                            --DLC
        ['name'] = 'impaler',
        ['brand'] = 'Vapid',
        ['model'] = 'impaler',
        ['price'] = 95000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `impaler`,
        ['shop'] = 'pdm',
    },
    ['impaler2'] = {                            --DLC
        ['name'] = 'impaler2',
        ['brand'] = 'Vapid',
        ['model'] = 'impaler2',
        ['price'] = 95000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `impaler2`,
        ['shop'] = 'pdm',
    },
    ['impaler3'] = {                            --DLC
        ['name'] = 'impaler3',
        ['brand'] = 'Vapid',
        ['model'] = 'impaler3',
        ['price'] = 95000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `impaler3`,
        ['shop'] = 'pdm',
    },
    ['impaler4'] = {                            --DLC
        ['name'] = 'impaler4',
        ['brand'] = 'Vapid',
        ['model'] = 'impaler4',
        ['price'] = 95000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `impaler4`,
        ['shop'] = 'pdm',
    },
    ['imperator'] = {                            --DLC
        ['name'] = 'imperator',
        ['brand'] = 'Vapid',
        ['model'] = 'imperator',
        ['price'] = 95000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `imperator`,
        ['shop'] = 'pdm',
    },
    ['imperator2'] = {                            --DLC
        ['name'] = 'imperator2',
        ['brand'] = 'Vapid',
        ['model'] = 'imperator2',
        ['price'] = 95000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `imperator2`,
        ['shop'] = 'pdm',
    },
    ['imperator3'] = {                            --DLC
        ['name'] = 'imperator3',
        ['brand'] = 'Vapid',
        ['model'] = 'imperator3',
        ['price'] = 95000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `imperator3`,
        ['shop'] = 'pdm',
    },
    ['lurcher'] = {
        ['name'] = 'Gauntlet Classic Custom',
        ['brand'] = 'Bravado',
        ['model'] = 'lurcher',
        ['price'] = 21000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `lurcher`,
        ['shop'] = 'pdm',
    },
    ['moonbeam'] = {
        ['name'] = 'Moonbeam',
        ['brand'] = 'Declasse',
        ['model'] = 'moonbeam',
        ['price'] = 13000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `moonbeam`,
        ['shop'] = 'pdm',
    },
    ['moonbeam2'] = {
        ['name'] = 'Moonbeam Custom',
        ['brand'] = 'Declasse',
        ['model'] = 'moonbeam2',
        ['price'] = 15000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `moonbeam2`,
        ['shop'] = 'pdm',
    },
    ['nightshade'] = {
        ['name'] = 'Nightshade',
        ['brand'] = 'Imponte',
        ['model'] = 'nightshade',
        ['price'] = 70000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `nightshade`,
        ['shop'] = 'pdm',
    },
    ['peyote2'] = {                            --DLC
        ['name'] = 'Peyote Gasser',
        ['brand'] = 'Vapid',
        ['model'] = 'peyote2',
        ['price'] = 40000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `peyote2`,
        ['shop'] = 'pdm',
    },
    ['phoenix'] = {
        ['name'] = 'Phoenix',
        ['brand'] = 'Imponte',
        ['model'] = 'phoenix',
        ['price'] = 65000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `phoenix`,
        ['shop'] = 'pdm',
    },
    ['picador'] = {
        ['name'] = 'Picador',
        ['brand'] = 'Cheval',
        ['model'] = 'picador',
        ['price'] = 20000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `picador`,
        ['shop'] = 'pdm',
    },
    ['ratloader2'] = {
        ['name'] = 'ratloader2',
        ['brand'] = 'Ratloader2',
        ['model'] = 'ratloader2',
        ['price'] = 20000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `ratloader2`,
        ['shop'] = 'pdm',
    },
    ['ruiner'] = {
        ['name'] = 'Ruiner',
        ['brand'] = 'Imponte',
        ['model'] = 'ruiner',
        ['price'] = 29000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `ruiner`,
        ['shop'] = 'pdm',
    },
    ['ruiner2'] = {
        ['name'] = 'Ruiner 2000',
        ['brand'] = 'Imponte',
        ['model'] = 'ruiner2',
        ['price'] = 50000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `ruiner2`,
        ['shop'] = 'pdm',
    },
    ['sabregt'] = {
        ['name'] = 'Sabre Turbo',
        ['brand'] = 'Declasse',
        ['model'] = 'sabregt',
        ['price'] = 23000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `sabregt`,
        ['shop'] = 'pdm',
    },
    ['sabregt2'] = {
        ['name'] = 'Sabre GT',
        ['brand'] = 'Declasse',
        ['model'] = 'sabregt2',
        ['price'] = 26500,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `sabregt2`,
        ['shop'] = 'pdm',
    },
    ['slamvan'] = {
        ['name'] = 'Slam Van',
        ['brand'] = 'Vapid',
        ['model'] = 'slamvan',
        ['price'] = 30000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `slamvan`,
        ['shop'] = 'pdm',
    },
    ['slamvan2'] = {
        ['name'] = 'Lost Slam Van',
        ['brand'] = 'Vapid',
        ['model'] = 'slamvan2',
        ['price'] = 90000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `slamvan2`,
        ['shop'] = 'pdm',
    },
    ['slamvan3'] = {
        ['name'] = 'Slam Van Custom',
        ['brand'] = 'Vapid',
        ['model'] = 'slamvan3',
        ['price'] = 17000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `slamvan3`,
        ['shop'] = 'pdm',
    },
    ['stalion'] = {
        ['name'] = 'Stallion',
        ['brand'] = 'Declasse',
        ['model'] = 'stalion',
        ['price'] = 33000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `stalion`,
        ['shop'] = 'pdm',
    },
    ['stalion2'] = {
        ['name'] = 'Stallion Burgershot',
        ['brand'] = 'Declasse',
        ['model'] = 'stalion2',
        ['price'] = 40000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `stalion2`,
        ['shop'] = 'pdm',
    },
    ['tampa'] = {
        ['name'] = 'Tampa',
        ['brand'] = 'Declasse',
        ['model'] = 'tampa',
        ['price'] = 24500,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `tampa`,
        ['shop'] = 'pdm',
    },
    ['tulip'] = {                            --DLC
        ['name'] = 'Tulip',
        ['brand'] = 'Declasse',
        ['model'] = 'tulip',
        ['price'] = 80000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `tulip`,
        ['shop'] = 'pdm',
    },
    ['vamos'] = {                            --DLC
        ['name'] = 'Vamos',
        ['brand'] = 'Declasse',
        ['model'] = 'vamos',
        ['price'] = 30000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `vamos`,
        ['shop'] = 'pdm',
    },
    ['vigero'] = {
        ['name'] = 'Vigero',
        ['brand'] = 'Declasse',
        ['model'] = 'vigero',
        ['price'] = 39500,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `vigero`,
        ['shop'] = 'pdm',
    },
    ['virgo'] = {
        ['name'] = 'Virgo',
        ['brand'] = 'Albany',
        ['model'] = 'virgo',
        ['price'] = 22000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `virgo`,
        ['shop'] = 'pdm',
    },
    ['virgo2'] = {
        ['name'] = 'Virgo Custom Classic',
        ['brand'] = 'Dundreary',
        ['model'] = 'virgo2',
        ['price'] = 21000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `virgo2`,
        ['shop'] = 'pdm',
    },
    ['virgo3'] = {
        ['name'] = 'Virgo Custom Classic',
        ['brand'] = 'Dundreary',
        ['model'] = 'virgo3',
        ['price'] = 21000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `virgo3`,
        ['shop'] = 'pdm',
    },
    ['voodoo'] = {
        ['name'] = 'Voodoo',
        ['brand'] = 'Declasse',
        ['model'] = 'voodoo',
        ['price'] = 13000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `voodoo`,
        ['shop'] = 'pdm',
    },
    ['yosemite'] = {
        ['name'] = 'Yosemite',
        ['brand'] = 'Declasse',
        ['model'] = 'yosemite',
        ['price'] = 19500,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `yosemite`,
        ['shop'] = 'pdm',
    },
    ['yosemite2'] = {
        ['name'] = 'Yosemite Drift',
        ['brand'] = 'Declasse',
        ['model'] = 'yosemite2',
        ['price'] = 55000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `yosemite2`,
        ['shop'] = 'pdm',
    },
    ['yosemite3'] = {
        ['name'] = 'Yosemite Rancher',
        ['brand'] = 'Declasse',
        ['price'] = 425000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'yosemite3',
        ['hash'] = `yosemite3`,
        ['shop'] = 'pdm',
    },
    ['buffalo4'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Buffalo STX',
        ['brand'] = 'Bravado',
        ['model'] = 'buffalo4',
        ['price'] = 345000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `buffalo4`,
        ['shop'] = 'pdm',
    },
    --- Off-Road
    ['bfinjection'] = {
        ['name'] = 'Bf Injection',
        ['brand'] = 'Annis',
        ['price'] = 9000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'bfinjection',
        ['hash'] = `bfinjection`,
        ['shop'] = 'pdm',
    },
    ['bifta'] = {
        ['name'] = 'Bifta',
        ['brand'] = 'Annis',
        ['price'] = 15500,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'bifta',
        ['hash'] = `bifta`,
        ['shop'] = 'pdm',
    },
    ['blazer'] = {
        ['name'] = 'Blazer',
        ['brand'] = 'Annis',
        ['price'] = 7500,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'blazer',
        ['hash'] = `blazer`,
        ['shop'] = 'pdm',
    },
    ['blazer2'] = {
        ['name'] = 'Blazer Lifeguard',
        ['brand'] = 'Nagasaki',
        ['model'] = 'blazer2',
        ['price'] = 7000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `blazer2`,
        ['shop'] = 'pdm',
    },
    ['blazer3'] = {
        ['name'] = 'Blazer Hot Rod',
        ['brand'] = 'Nagasaki',
        ['model'] = 'blazer3',
        ['price'] = 7000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `blazer3`,
        ['shop'] = 'pdm',
    },
    ['blazer4'] = {
        ['name'] = 'Blazer Sport',
        ['brand'] = 'Annis',
        ['price'] = 9250,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'blazer4',
        ['hash'] = `blazer4`,
        ['shop'] = 'pdm',
    },
    ['blazer5'] = {
        ['name'] = 'Blazer Aqua',
        ['brand'] = 'Nagasaki',
        ['model'] = 'blazer5',
        ['price'] = 40000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `blazer5`,
        ['shop'] = 'pdm',
    },
    ['brawler'] = {
        ['name'] = 'Brawler',
        ['brand'] = 'Annis',
        ['price'] = 40000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'brawler',
        ['hash'] = `brawler`,
        ['shop'] = 'pdm',
    },
    ['caracara'] = {
        ['name'] = 'Caracara',
        ['brand'] = 'Vapid',
        ['model'] = 'caracara',
        ['price'] = 60000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `caracara`,
        ['shop'] = 'pdm',
    },
    ['caracara2'] = {                            --DLC
        ['name'] = 'Caracara 4x4',
        ['brand'] = 'Vapid',
        ['model'] = 'caracara2',
        ['price'] = 80000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `caracara2`,
        ['shop'] = 'pdm',
    },
    ['dubsta3'] = {
        ['name'] = 'Dubsta 6x6',
        ['brand'] = 'Annis',
        ['price'] = 34000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'dubsta3',
        ['hash'] = `dubsta3`,
        ['shop'] = 'pdm',
    },
    ['dune'] = {
        ['name'] = 'Dune Buggy',
        ['brand'] = 'Annis',
        ['price'] = 14000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'dune',
        ['hash'] = `dune`,
        ['shop'] = 'pdm',
    },
    ['everon'] = {
        ['name'] = 'Everon',
        ['brand'] = 'Karin',
        ['model'] = 'everon',
        ['price'] = 60000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `everon`,
        ['shop'] = 'pdm',
    },
    ['freecrawler'] = {                            --DLC
        ['name'] = 'Freecrawler',
        ['brand'] = 'Canis',
        ['model'] = 'freecrawler',
        ['price'] = 24000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `freecrawler`,
        ['shop'] = 'pdm',
    },
    ['hellion'] = {                            --DLC
        ['name'] = 'Hellion',
        ['brand'] = 'Annis',
        ['model'] = 'hellion',
        ['price'] = 38000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `hellion`,
        ['shop'] = 'pdm',
    },
    ['kalahari'] = {
        ['name'] = 'Kalahari',
        ['brand'] = 'Canis',
        ['model'] = 'kalahari',
        ['price'] = 14000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `kalahari`,
        ['shop'] = 'pdm',
    },
    ['kamacho'] = {
        ['name'] = 'Kamacho',
        ['brand'] = 'Canis',
        ['model'] = 'kamacho',
        ['price'] = 50000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `kamacho`,
        ['shop'] = 'pdm',
    },
    ['mesa3'] = {
        ['name'] = 'Mesa Merryweather',
        ['brand'] = 'Canis',
        ['model'] = 'mesa3',
        ['price'] = 400000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `mesa3`,
        ['shop'] = 'pdm',
    },
    ['outlaw'] = {
        ['name'] = 'Outlaw',
        ['brand'] = 'Nagasaki',
        ['model'] = 'outlaw',
        ['price'] = 15000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `outlaw`,
        ['shop'] = 'pdm',
    },
    ['rancherxl'] = {
        ['name'] = 'Rancher XL',
        ['brand'] = 'Declasse',
        ['model'] = 'rancherxl',
        ['price'] = 24000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `rancherxl`,
        ['shop'] = 'pdm',
    },
    ['rebel2'] = {
        ['name'] = 'Rebel',
        ['brand'] = 'Annis',
        ['model'] = 'rebel2',
        ['price'] = 20000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `rebel2`,
        ['shop'] = 'pdm',
    },
    ['riata'] = {
        ['name'] = 'Riata',
        ['brand'] = 'Vapid',
        ['model'] = 'riata',
        ['price'] = 380000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `riata`,
        ['shop'] = 'pdm',
    },
    ['sandking'] = {
        ['name'] = 'Sandking',
        ['brand'] = 'Annis',
        ['price'] = 25000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'sandking',
        ['hash'] = `sandking`,
        ['shop'] = 'pdm',
    },
    ['sandking2'] = {
        ['name'] = 'Sandking SWB',
        ['brand'] = 'Annis',
        ['price'] = 38000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'sandking2',
        ['hash'] = `sandking2`,
        ['shop'] = 'pdm',
    },
    ['trophytruck'] = {
        ['name'] = 'Trophy Truck',
        ['brand'] = 'Annis',
        ['price'] = 60000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'trophytruck',
        ['hash'] = `trophytruck`,
        ['shop'] = 'pdm',
    },
    ['trophytruck2'] = {
        ['name'] = 'Trophy Truck Limited',
        ['brand'] = 'Annis',
        ['price'] = 80000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'trophytruck2',
        ['hash'] = `trophytruck2`,
        ['shop'] = 'pdm',
    },
    ['vagrant'] = {
        ['name'] = 'Vagrant',
        ['brand'] = 'Maxwell',
        ['price'] = 50000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'vagrant',
        ['hash'] = `vagrant`,
        ['shop'] = 'pdm',
    },
    ['verus'] = {
        ['name'] = 'Verus',
        ['brand'] = 'Dinka',
        ['price'] = 20000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'verus',
        ['hash'] = `verus`,
        ['shop'] = 'pdm',
    },
    ['winky'] = {
        ['name'] = 'Winky',
        ['brand'] = 'Vapid',
        ['price'] = 10000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['model'] = 'winky',
        ['hash'] = `winky`,
        ['shop'] = 'pdm',
    },
    --- SUVs
    ['baller'] = {
        ['name'] = 'Baller',
        ['brand'] = 'Gallivanter',
        ['model'] = 'baller',
        ['price'] = 22000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `baller`,
        ['shop'] = 'pdm',
        ["tier"] = "A",
    },
    ['baller2'] = {
        ['name'] = 'Baller',
        ['brand'] = 'Gallivanter',
        ['model'] = 'baller2',
        ['price'] = 15000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `baller2`,
        ['shop'] = 'pdm',
        ["tier"] = "A",
    },
    ['baller3'] = {
        ['name'] = 'Baller LE',
        ['brand'] = 'Gallivanter',
        ['model'] = 'baller3',
        ['price'] = 15000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `baller3`,
        ['shop'] = 'pdm',
        ["tier"] = "A",
    },
    ['baller4'] = {
        ['name'] = 'Baller LE LWB',
        ['brand'] = 'Gallivanter',
        ['model'] = 'baller4',
        ['price'] = 29000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `baller4`,
        ['shop'] = 'pdm',
    },
    ['baller5'] = {
        ['name'] = 'Baller LE (Armored)',
        ['brand'] = 'Gallivanter',
        ['model'] = 'baller5',
        ['price'] = 78000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `baller5`,
        ['shop'] = 'pdm',
    },
    ['baller6'] = {
        ['name'] = 'Baller LE LWB (Armored)',
        ['brand'] = 'Gallivanter',
        ['model'] = 'baller6',
        ['price'] = 82000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `baller6`,
        ['shop'] = 'pdm',
    },
    ['bjxl'] = {
        ['name'] = 'BeeJay XL',
        ['brand'] = 'Karin',
        ['model'] = 'bjxl',
        ['price'] = 19000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `bjxl`,
        ['shop'] = 'pdm',
    },
    ['cavalcade'] = {
        ['name'] = 'Cavalcade',
        ['brand'] = 'Albany',
        ['model'] = 'cavalcade',
        ['price'] = 14000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `cavalcade`,
        ['shop'] = 'pdm',
    },
    ['cavalcade2'] = {
        ['name'] = 'Cavalcade',
        ['brand'] = 'Albany',
        ['model'] = 'cavalcade2',
        ['price'] = 16500,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `cavalcade2`,
        ['shop'] = 'pdm',
    },
    ['contender'] = {
        ['name'] = 'Contender',
        ['brand'] = 'Vapid',
        ['model'] = 'contender',
        ['price'] = 35000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `contender`,
        ['shop'] = 'pdm',
    },
    ['dubsta'] = {
        ['name'] = 'Dubsta',
        ['brand'] = 'Benefactor',
        ['model'] = 'dubsta',
        ['price'] = 19000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `dubsta`,
        ['shop'] = 'pdm',
    },
    ['dubsta2'] = {
        ['name'] = 'Dubsta Luxuary',
        ['brand'] = 'Benefactor',
        ['model'] = 'dubsta2',
        ['price'] = 19500,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `dubsta2`,
        ['shop'] = 'pdm',
    },
    ['fq2'] = {
        ['name'] = 'FQ2',
        ['brand'] = 'Fathom',
        ['model'] = 'fq2',
        ['price'] = 18500,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `fq2`,
        ['shop'] = 'pdm',
    },
    ['granger'] = {
        ['name'] = 'Granger',
        ['brand'] = 'Declasse',
        ['model'] = 'granger',
        ['price'] = 22000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `granger`,
        ['shop'] = 'pdm',
    },
    ['gresley'] = {
        ['name'] = 'Gresley',
        ['brand'] = 'Bravado',
        ['model'] = 'gresley',
        ['price'] = 25000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `gresley`,
        ['shop'] = 'pdm',
    },
    ['habanero'] = {
        ['name'] = 'Habanero',
        ['brand'] = 'Emperor',
        ['model'] = 'habanero',
        ['price'] = 20000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `habanero`,
        ['shop'] = 'pdm',
    },
    ['huntley'] = {
        ['name'] = 'Huntley S',
        ['brand'] = 'Enus',
        ['model'] = 'huntley',
        ['price'] = 24500,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `huntley`,
        ['shop'] = 'pdm',
    },
    ['landstalker'] = {
        ['name'] = 'Landstalker',
        ['brand'] = 'Dundreary',
        ['model'] = 'landstalker',
        ['price'] = 12000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `landstalker`,
        ['shop'] = 'pdm',
        ["tier"] = "A",
    },
    ['landstalker2'] = {
        ['name'] = 'Landstalker XL',
        ['brand'] = 'Dundreary',
        ['model'] = 'landstalker2',
        ['price'] = 26000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `landstalker2`,
        ['shop'] = 'pdm',
    },
    ['mesa'] = {
        ['name'] = 'Mesa',
        ['brand'] = 'Canis',
        ['model'] = 'mesa',
        ['price'] = 12000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `mesa`,
        ['shop'] = 'pdm',
        ["tier"] = "A+",
    },
    ['novak'] = {                            --DLC
        ['name'] = 'Novak',
        ['brand'] = 'Lampadati',
        ['model'] = 'novak',
        ['price'] = 70000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `novak`,
        ['shop'] = 'pdm',
        ["tier"] = "A+",
    },
    ['patriot'] = {
        ['name'] = 'Patriot',
        ['brand'] = 'Mammoth',
        ['model'] = 'patriot',
        ['price'] = 21000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `patriot`,
        ['shop'] = 'pdm',
    },
    ['radi'] = {
        ['name'] = 'Radius',
        ['brand'] = 'Vapid',
        ['model'] = 'radi',
        ['price'] = 18000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `radi`,
        ['shop'] = 'pdm',
    },
    ['rebla'] = {
        ['name'] = 'Rebla GTS',
        ['brand'] = 'Übermacht',
        ['model'] = 'rebla',
        ['price'] = 21000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `rebla`,
        ['shop'] = 'pdm',
    },
    ['rocoto'] = {
        ['name'] = 'Rocoto',
        ['brand'] = 'Obey',
        ['model'] = 'rocoto',
        ['price'] = 13000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `rocoto`,
        ['shop'] = 'pdm',
    },
    ['seminole'] = {
        ['name'] = 'Seminole',
        ['brand'] = 'Canis',
        ['model'] = 'seminole',
        ['price'] = 20000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `seminole`,
        ['shop'] = 'pdm',
    },
    ['seminole2'] = {
        ['name'] = 'Seminole Frontier',
        ['brand'] = 'Canis',
        ['model'] = 'seminole2',
        ['price'] = 13000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `seminole2`,
        ['shop'] = 'pdm',
    },
    ['serrano'] = {
        ['name'] = 'Serrano',
        ['brand'] = 'Benefactor',
        ['model'] = 'serrano',
        ['price'] = 48000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `serrano`,
        ['shop'] = 'pdm',
    },
    ['toros'] = {                            --DLC
        ['name'] = 'Toros',
        ['brand'] = 'Pegassi',
        ['model'] = 'toros',
        ['price'] = 65000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `toros`,
        ['shop'] = 'pdm',
        ["tier"] = "A+",
    },
    ['xls'] = {
        ['name'] = 'XLS',
        ['brand'] = 'Benefactor',
        ['model'] = 'xls',
        ['price'] = 17000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `xls`,
        ['shop'] = 'pdm',
    },
    ['granger2'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Granger 3600LX',
        ['brand'] = 'Declasse',
        ['model'] = 'granger2',
        ['price'] = 221000,
        ['category'] = 'suvs',
        ['categoryLabel'] = 'SUVs',
        ['hash'] = `granger2`,
        ['shop'] = 'pdm',
    },
    --- Sedans
    ['asea'] = {
        ['name'] = 'Asea',
        ['brand'] = 'Declasse',
        ['model'] = 'asea',
        ['price'] = 2500,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `asea`,
        ['shop'] = 'pdm',
    },
    ['asterope'] = {
        ['name'] = 'Asterope',
        ['brand'] = 'Karin',
        ['model'] = 'asterope',
        ['price'] = 11000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `asterope`,
        ['shop'] = 'pdm',
    },
    ['cog55'] = {
        ['name'] = 'Cognoscenti 55',
        ['brand'] = 'Enus',
        ['model'] = 'cog55',
        ['price'] = 22000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `cog55`,
        ['shop'] = 'pdm',
    },
    ['cognoscenti'] = {
        ['name'] = 'Cognoscenti',
        ['brand'] = 'Enus',
        ['model'] = 'cognoscenti',
        ['price'] = 22500,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `cognoscenti`,
        ['shop'] = 'pdm',
    },
    ['emperor'] = {
        ['name'] = 'Emperor',
        ['brand'] = 'Albany',
        ['model'] = 'emperor',
        ['price'] = 4250,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `emperor`,
        ['shop'] = 'pdm',
    },
    ['fugitive'] = {
        ['name'] = 'Fugitive',
        ['brand'] = 'Cheval',
        ['model'] = 'fugitive',
        ['price'] = 20000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `fugitive`,
        ['shop'] = 'pdm',
    },
    ['glendale'] = {
        ['name'] = 'Glendale',
        ['brand'] = 'Benefactor',
        ['model'] = 'glendale',
        ['price'] = 3400,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `glendale`,
        ['shop'] = 'pdm',
    },
    ['glendale2'] = {
        ['name'] = 'Glendale',
        ['brand'] = 'Benefactor',
        ['model'] = 'glendale2',
        ['price'] = 12000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `glendale2`,
        ['shop'] = 'pdm',
    },
    ['ingot'] = {
        ['name'] = 'Ingot',
        ['brand'] = 'Vulcar',
        ['model'] = 'ingot',
        ['price'] = 4999,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `ingot`,
        ['shop'] = 'pdm',
        ["tier"] = "S",
    },
    ['intruder'] = {
        ['name'] = 'Intruder',
        ['brand'] = 'Karin',
        ['model'] = 'intruder',
        ['price'] = 11250,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `intruder`,
        ['shop'] = 'pdm',
    },
    ['premier'] = {
        ['name'] = 'Premier',
        ['brand'] = 'Declasse',
        ['model'] = 'premier',
        ['price'] = 12000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `premier`,
        ['shop'] = 'pdm',
    },
    ['primo'] = {
        ['name'] = 'Primo',
        ['brand'] = 'Albany',
        ['model'] = 'primo',
        ['price'] = 5000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `primo`,
        ['shop'] = 'pdm',
    },
    ['primo2'] = {
        ['name'] = 'Primo Custom',
        ['brand'] = 'Albany',
        ['model'] = 'primo2',
        ['price'] = 14500,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `primo2`,
        ['shop'] = 'pdm',
    },
    ['regina'] = {
        ['name'] = 'Regina',
        ['brand'] = 'Dundreary',
        ['model'] = 'regina',
        ['price'] = 7000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `regina`,
        ['shop'] = 'pdm',
    },
    ['stafford'] = {                            --DLC
        ['name'] = 'Stafford',
        ['brand'] = 'Enus',
        ['model'] = 'stafford',
        ['price'] = 30000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `stafford`,
        ['shop'] = 'pdm',
    },
    ['stanier'] = {
        ['name'] = 'Stanier',
        ['brand'] = 'Vapid',
        ['model'] = 'stanier',
        ['price'] = 19000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `stanier`,
        ['shop'] = 'pdm',
    },
    ['stratum'] = {
        ['name'] = 'Stratum',
        ['brand'] = 'Zirconium',
        ['model'] = 'stratum',
        ['price'] = 15000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `stratum`,
        ['shop'] = 'pdm',
    },
    ['stretch'] = {
        ['name'] = 'Stretch',
        ['brand'] = 'Dundreary',
        ['model'] = 'stretch',
        ['price'] = 19000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `stretch`,
        ['shop'] = 'pdm',
    },
    ['superd'] = {
        ['name'] = 'Super Diamond',
        ['brand'] = 'Enus',
        ['model'] = 'superd',
        ['price'] = 17000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `superd`,
        ['shop'] = 'pdm',
    },
    ['surge'] = {
        ['name'] = 'Surge',
        ['brand'] = 'Cheval',
        ['model'] = 'surge',
        ['price'] = 20000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `surge`,
        ['shop'] = 'pdm',
    },
    ['tailgater'] = {
        ['name'] = 'Tailgater',
        ['brand'] = 'Obey',
        ['model'] = 'tailgater',
        ['price'] = 22000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `tailgater`,
        ['shop'] = 'pdm',
    },
    ['warrener'] = {
        ['name'] = 'Warrener',
        ['brand'] = 'Vulcar',
        ['model'] = 'warrener',
        ['price'] = 4000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `warrener`,
        ['shop'] = 'pdm',
    },
    ['washington'] = {
        ['name'] = 'Washington',
        ['brand'] = 'Albany',
        ['model'] = 'washington',
        ['price'] = 7000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `washington`,
        ['shop'] = 'pdm',
    },
    ['tailgater2'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Tailgater S',
        ['brand'] = 'Obey',
        ['model'] = 'tailgater2',
        ['price'] = 51000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `tailgater2`,
        ['shop'] = 'pdm',
    },
    ['cinquemila'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Lampadati',
        ['brand'] = 'Cinquemila',
        ['model'] = 'cinquemila',
        ['price'] = 125000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `cinquemila`,
        ['shop'] = 'pdm',
    },
    ['iwagen'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Obey',
        ['brand'] = 'I-Wagen',
        ['model'] = 'iwagen',
        ['price'] = 225000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `iwagen`,
        ['shop'] = 'pdm',
        ["tier"] = "S+",
    },
    ['astron'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Pfister',
        ['brand'] = 'Astron',
        ['model'] = 'astron',
        ['price'] = 150000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `astron`,
        ['shop'] = 'pdm',
        ["tier"] = "S",
    },
    ['baller7'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Baller ST',
        ['brand'] = 'Gallivanter',
        ['model'] = 'baller7',
        ['price'] = 145000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `baller7`,
        ['shop'] = 'pdm',
        ["tier"] = "S",
    },
    ['comet7'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Comet',
        ['brand'] = 'S2 Cabrio',
        ['model'] = 'comet7',
        ['price'] = 25000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `comet7`,
        ['shop'] = 'pdm',
    },
    ['deity'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Deity',
        ['brand'] = 'Enus',
        ['model'] = 'deity',
        ['price'] = 505000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `deity`,
        ['shop'] = 'pdm',
    },
    ['jubilee'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Jubilee',
        ['brand'] = 'Enus',
        ['model'] = 'jubilee',
        ['price'] = 485000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `jubilee`,
        ['shop'] = 'pdm',
    },
    ['patriot3'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Patriot',
        ['brand'] = 'Mil-Spec',
        ['model'] = 'patriot3',
        ['price'] = 270000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `patriot3`,
        ['shop'] = 'pdm',
    },
    --- Sports
    ['alpha'] = {
        ['name'] = 'Alpha',
        ['brand'] = 'Albany',
        ['model'] = 'alpha',
        ['price'] = 53000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `alpha`,
        ['shop'] = 'luxury',
    },
    ['banshee'] = {
        ['name'] = 'Banshee',
        ['brand'] = 'Bravado',
        ['model'] = 'banshee',
        ['price'] = 56000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `banshee`,
        ['shop'] = 'luxury',
        ["tier"] = "S+",
    },
    ['bestiagts'] = {
        ['name'] = 'Bestia GTS',
        ['brand'] = 'Grotti',
        ['model'] = 'bestiagts',
        ['price'] = 37000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `bestiagts`,
        ['shop'] = 'luxury',
    },
    ['blista2'] = {
        ['name'] = 'Blista Compact',
        ['brand'] = 'Dinka',
        ['model'] = 'blista2',
        ['price'] = 18950,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `blista2`,
        ['shop'] = 'pdm',
        ["tier"] = "S+",
    },
    ['blista3'] = {
        ['name'] = 'Blista Go Go Monkey',
        ['brand'] = 'Dinka',
        ['model'] = 'blista3',
        ['price'] = 15000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `blista3`,
        ['shop'] = 'pdm',
        ["tier"] = "S+",
    },
    ['buffalo'] = {
        ['name'] = 'Buffalo',
        ['brand'] = 'Bravado',
        ['model'] = 'buffalo',
        ['price'] = 18750,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `buffalo`,
        ['shop'] = 'luxury',
    },
    ['buffalo2'] = {
        ['name'] = 'Buffalo S',
        ['brand'] = 'Bravado',
        ['model'] = 'buffalo2',
        ['price'] = 24500,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `buffalo2`,
        ['shop'] = 'luxury',
    },
    ['carbonizzare'] = {
        ['name'] = 'Carbonizzare',
        ['brand'] = 'Grotti',
        ['model'] = 'carbonizzare',
        ['price'] = 155000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `carbonizzare`,
        ['shop'] = 'luxury',
    },
    ['comet2'] = {
        ['name'] = 'Comet',
        ['brand'] = 'Pfister',
        ['model'] = 'comet2',
        ['price'] = 130000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `comet2`,
        ['shop'] = 'luxury',
    },
    ['comet3'] = {
        ['name'] = 'Comet Retro Custom',
        ['brand'] = 'Pfister',
        ['model'] = 'comet3',
        ['price'] = 175000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `comet3`,
        ['shop'] = 'luxury',
    },
    ['comet4'] = {
        ['name'] = 'Comet Safari',
        ['brand'] = 'Pfister',
        ['model'] = 'comet4',
        ['price'] = 110000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `comet4`,
        ['shop'] = 'luxury',
    },
    ['comet5'] = {
        ['name'] = 'Comet SR',
        ['brand'] = 'Pfister',
        ['model'] = 'comet5',
        ['price'] = 155000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `comet5`,
        ['shop'] = 'luxury',
        ["tier"] = "S+",
    },
    ['coquette'] = {
        ['name'] = 'Coquette',
        ['brand'] = 'Invetero',
        ['model'] = 'coquette',
        ['price'] = 145000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `coquette`,
        ['shop'] = 'luxury',
    },
    ['coquette2'] = {
        ['name'] = 'Coquette Classic',
        ['brand'] = 'Invetero',
        ['model'] = 'coquette2',
        ['price'] = 165000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `coquette2`,
        ['shop'] = 'pdm',
    },
    ['coquette4'] = {
        ['name'] = 'Coquette D10',
        ['brand'] = 'Invetero',
        ['model'] = 'coquette4',
        ['price'] = 220000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `coquette4`,
        ['shop'] = 'luxury',
    },
    ['drafter'] = {                            --DLC
        ['name'] = '8F Drafter',
        ['brand'] = 'Obey',
        ['model'] = 'drafter',
        ['price'] = 80000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `drafter`,
        ['shop'] = 'luxury',
        ["tier"] = "S+",
    },
    ['deveste'] = {                            --DLC
        ['name'] = 'Deveste',
        ['brand'] = 'Principe',
        ['model'] = 'deveste',
        ['price'] = 234000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `deveste`,
        ['shop'] = 'luxury',
    },
    ['elegy'] = {                            --DLC
        ['name'] = 'Elegy Retro Custom',
        ['brand'] = 'Annis',
        ['model'] = 'elegy',
        ['price'] = 145000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `elegy`,
        ['shop'] = 'luxury',
    },
    ['elegy2'] = {
        ['name'] = 'Elegy RH8',
        ['brand'] = 'Annis',
        ['model'] = 'elegy2',
        ['price'] = 150000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `elegy2`,
        ['shop'] = 'luxury',
    },
    ['feltzer2'] = {
        ['name'] = 'Feltzer',
        ['brand'] = 'Benefactor',
        ['model'] = 'feltzer2',
        ['price'] = 97000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `feltzer2`,
        ['shop'] = 'luxury',
    },
    ['flashgt'] = {
        ['name'] = 'Flash GT',
        ['brand'] = 'Vapid',
        ['model'] = 'flashgt',
        ['price'] = 48000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `flashgt`,
        ['shop'] = 'luxury',
    },
    ['furoregt'] = {
        ['name'] = 'Furore GT',
        ['brand'] = 'Lampadati',
        ['model'] = 'furoregt',
        ['price'] = 78000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `furoregt`,
        ['shop'] = 'luxury',
    },
    ['futo'] = {
        ['name'] = 'Futo',
        ['brand'] = 'Karin',
        ['model'] = 'futo',
        ['price'] = 17500,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `futo`,
        ['shop'] = 'pdm',
    },
    ['gb200'] = {
        ['name'] = 'GB 200',
        ['brand'] = 'Vapid',
        ['model'] = 'gb200',
        ['price'] = 140000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `gb200`,
        ['shop'] = 'luxury',
    },
    ['komoda'] = {
        ['name'] = 'Komoda',
        ['brand'] = 'Lampadati',
        ['model'] = 'komoda',
        ['price'] = 55000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `komoda`,
        ['shop'] = 'luxury',
    },
    ['imorgon'] = {
        ['name'] = 'Imorgon',
        ['brand'] = 'Overflod',
        ['model'] = 'imorgon',
        ['price'] = 120000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `imorgon`,
        ['shop'] = 'luxury',
    },
    ['issi7'] = {                            --DLC
        ['name'] = 'Issi Sport',
        ['brand'] = 'Weeny',
        ['model'] = 'issi7',
        ['price'] = 100000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `issi7`,
        ['shop'] = 'pdm',
    },
    ['italigto'] = {                            --DLC
        ['name'] = 'Itali GTO',
        ['brand'] = 'Progen',
        ['model'] = 'italigto',
        ['price'] = 260000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `italigto`,
        ['shop'] = 'luxury',
    },
    ['jugular'] = {                            --DLC
        ['name'] = 'Jugular',
        ['brand'] = 'Ocelot',
        ['model'] = 'jugular',
        ['price'] = 80000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `jugular`,
        ['shop'] = 'luxury',
    },
    ['jester'] = {
        ['name'] = 'Jester',
        ['brand'] = 'Dinka',
        ['model'] = 'jester',
        ['price'] = 132250,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `jester`,
        ['shop'] = 'luxury',
    },
    ['jester2'] = {
        ['name'] = 'Jester Racecar',
        ['brand'] = 'Dinka',
        ['model'] = 'jester2',
        ['price'] = 210000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `jester2`,
        ['shop'] = 'luxury',
    },
    ['jester3'] = {
        ['name'] = 'Jester Classic',
        ['brand'] = 'Dinka',
        ['model'] = 'jester3',
        ['price'] = 85000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `jester3`,
        ['shop'] = 'luxury',
    },
    ['khamelion'] = {
        ['name'] = 'Khamelion',
        ['brand'] = 'Hijak',
        ['model'] = 'khamelion',
        ['price'] = 90000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `khamelion`,
        ['shop'] = 'luxury',
    },
    ['kuruma'] = {
        ['name'] = 'Kuruma',
        ['brand'] = 'Karin',
        ['model'] = 'kuruma',
        ['price'] = 72000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `kuruma`,
        ['shop'] = 'luxury',
    },
    ['kuruma2'] = {
        ['name'] = 'kuruma2',
        ['brand'] = 'Karin2',
        ['model'] = 'kuruma2',
        ['price'] = 72000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `kuruma2`,
        ['shop'] = 'luxury',
    },
    ['locust'] = {                            --DLC
        ['name'] = 'Locust',
        ['brand'] = 'Ocelot',
        ['model'] = 'locust',
        ['price'] = 200000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `locust`,
        ['shop'] = 'luxury',
    },
    ['lynx'] = {
        ['name'] = 'Lynx',
        ['brand'] = 'Ocelot',
        ['model'] = 'lynx',
        ['price'] = 150000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `lynx`,
        ['shop'] = 'luxury',
    },
    ['massacro'] = {
        ['name'] = 'Massacro',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'massacro',
        ['price'] = 110000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `massacro`,
        ['shop'] = 'luxury',
    },
    ['massacro2'] = {
        ['name'] = 'Massacro Racecar',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'massacro2',
        ['price'] = 80000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `massacro2`,
        ['shop'] = 'luxury',
    },
    ['neo'] = {                            --DLC
        ['name'] = 'Neo',
        ['brand'] = 'Vysser',
        ['model'] = 'neo',
        ['price'] = 230000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `neo`,
        ['shop'] = 'luxury',
    },
    ['neon'] = {                            --DLC
        ['name'] = 'Neon',
        ['brand'] = 'Pfister',
        ['model'] = 'neon',
        ['price'] = 220000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `neon`,
        ['shop'] = 'luxury',
    },
    ['ninef'] = {
        ['name'] = '9F',
        ['brand'] = 'Obey',
        ['model'] = 'ninef',
        ['price'] = 95000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `ninef`,
        ['shop'] = 'luxury',
    },
    ['ninef2'] = {
        ['name'] = '9F Cabrio',
        ['brand'] = 'Obey',
        ['model'] = 'ninef2',
        ['price'] = 105000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `ninef2`,
        ['shop'] = 'luxury',
    },
    ['omnis'] = {
        ['name'] = 'Omnis',
        ['brand'] = 'Wow',
        ['model'] = 'omnis',
        ['price'] = 90000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `omnis`,
        ['shop'] = 'luxury',
    },
    ['paragon'] = {                            --DLC
        ['name'] = 'Paragon',
        ['brand'] = 'Enus',
        ['model'] = 'paragon',
        ['price'] = 60000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `paragon`,
        ['shop'] = 'luxury',
    },
    ['pariah'] = {
        ['name'] = 'Pariah',
        ['brand'] = 'Ocelot',
        ['model'] = 'pariah',
        ['price'] = 90000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `pariah`,
        ['shop'] = 'luxury',
    },
    ['penumbra'] = {
        ['name'] = 'Penumbra',
        ['brand'] = 'Maibatsu',
        ['model'] = 'penumbra',
        ['price'] = 22000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `penumbra`,
        ['shop'] = 'luxury',
    },
    ['penumbra2'] = {
        ['name'] = 'Penumbra FF',
        ['brand'] = 'Maibatsu',
        ['model'] = 'penumbra2',
        ['price'] = 30000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `penumbra2`,
        ['shop'] = 'luxury',
    },
    ['rapidgt'] = {
        ['name'] = 'Rapid GT',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'rapidgt',
        ['price'] = 86000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `rapidgt`,
        ['shop'] = 'luxury',
    },
    ['rapidgt2'] = {
        ['name'] = 'Rapid GT Convertible',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'rapidgt2',
        ['price'] = 92000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `rapidgt2`,
        ['shop'] = 'luxury',
    },
    ['raptor'] = {
        ['name'] = 'Raptor',
        ['brand'] = 'BF',
        ['model'] = 'raptor',
        ['price'] = 90000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `raptor`,
        ['shop'] = 'luxury',
    },
    ['revolter'] = {
        ['name'] = 'Revolter',
        ['brand'] = 'Ubermacht',
        ['model'] = 'revolter',
        ['price'] = 95000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `revolter`,
        ['shop'] = 'luxury',
    },
    ['ruston'] = {
        ['name'] = 'Ruston',
        ['brand'] = 'Hijak',
        ['model'] = 'ruston',
        ['price'] = 130000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `ruston`,
        ['shop'] = 'luxury',
    },
    ['schafter2'] = {
        ['name'] = 'Schafter',
        ['brand'] = 'Benefactor',
        ['model'] = 'schafter2',
        ['price'] = 16000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `schafter2`,
        ['shop'] = 'pdm',
    },
    ['schafter3'] = {
        ['name'] = 'Schafter V12',
        ['brand'] = 'Benefactor',
        ['model'] = 'schafter3',
        ['price'] = 35000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `schafter3`,
        ['shop'] = 'luxury',
    },
    ['schafter4'] = {
        ['name'] = 'Schafter LWB',
        ['brand'] = 'Benefactor',
        ['model'] = 'schafter4',
        ['price'] = 21000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `schafter4`,
        ['shop'] = 'luxury',
    },
    ['schlagen'] = {                            --DLC
        ['name'] = 'Schlagen GT',
        ['brand'] = 'Benefactor',
        ['model'] = 'schlagen',
        ['price'] = 160000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `schlagen`,
        ['shop'] = 'luxury',
    },
    ['schwarzer'] = {
        ['name'] = 'Schwartzer',
        ['brand'] = 'Benefactor',
        ['model'] = 'schwarzer',
        ['price'] = 47000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `schwarzer`,
        ['shop'] = 'luxury',
    },
    ['sentinel3'] = {
        ['name'] = 'Sentinel Classic',
        ['brand'] = 'Übermacht',
        ['model'] = 'sentinel3',
        ['price'] = 70000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `sentinel3`,
        ['shop'] = 'pdm',
    },
    ['seven70'] = {
        ['name'] = 'Seven-70',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'seven70',
        ['price'] = 140000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `seven70`,
        ['shop'] = 'luxury',
    },
    ['specter'] = {
        ['name'] = 'Specter',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'specter',
        ['price'] = 160000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `specter`,
        ['shop'] = 'luxury',
    },
    ['streiter'] = {
        ['name'] = 'Streiter',
        ['brand'] = 'Benefactor',
        ['model'] = 'streiter',
        ['price'] = 40000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `streiter`,
        ['shop'] = 'luxury',
    },
    ['sugoi'] = {
        ['name'] = 'Sugoi',
        ['brand'] = 'Dinka',
        ['model'] = 'sugoi',
        ['price'] = 85000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `sugoi`,
        ['shop'] = 'luxury',
    },
    ['sultan'] = {
        ['name'] = 'Sultan',
        ['brand'] = 'Karin',
        ['model'] = 'sultan',
        ['price'] = 50000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `sultan`,
        ['shop'] = 'luxury',
    },
    ['sultan2'] = {
        ['name'] = 'Sultan Custom',
        ['brand'] = 'Karin',
        ['model'] = 'sultan2',
        ['price'] = 55000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `sultan2`,
        ['shop'] = 'luxury',
    },
    ['surano'] = {
        ['name'] = 'Surano',
        ['brand'] = 'Benefactor',
        ['model'] = 'surano',
        ['price'] = 80000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `surano`,
        ['shop'] = 'luxury',
    },
    ['tampa2'] = {
        ['name'] = 'Drift Tampa',
        ['brand'] = 'Declasse',
        ['model'] = 'tampa2',
        ['price'] = 80000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `tampa2`,
        ['shop'] = 'pdm',
    },
    ['tropos'] = {
        ['name'] = 'Tropos Rallye',
        ['brand'] = 'Lampadati',
        ['model'] = 'tropos',
        ['price'] = 65000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `tropos`,
        ['shop'] = 'luxury',
    },
    ['verlierer2'] = {
        ['name'] = 'Verlierer',
        ['brand'] = 'Bravado',
        ['model'] = 'verlierer2',
        ['price'] = 90500,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `verlierer2`,
        ['shop'] = 'luxury',
    },
    ['vstr'] = {
        ['name'] = 'V-STR',
        ['brand'] = 'Albany',
        ['model'] = 'vstr',
        ['price'] = 80000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `vstr`,
        ['shop'] = 'luxury',
    },
    ['italirsx'] = {
        ['name'] = 'Itali RSX',
        ['brand'] = 'Progen',
        ['model'] = 'italirsx',
        ['price'] = 260000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `italirsx`,
        ['shop'] = 'luxury',
    },
    ['zr350'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'ZR350',
        ['brand'] = 'Annis',
        ['model'] = 'zr350',
        ['price'] = 38000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `zr350`,
        ['shop'] = 'luxury',
    },
    ['calico'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Calico GTF',
        ['brand'] = 'Karin',
        ['model'] = 'calico',
        ['price'] = 39000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `calico`,
        ['shop'] = 'luxury',
    },
    ['futo2'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Futo GTX',
        ['brand'] = 'Karin',
        ['model'] = 'futo2',
        ['price'] = 39000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `futo2`,
        ['shop'] = 'luxury',
    },
    ['euros'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Euros',
        ['brand'] = 'Annis',
        ['model'] = 'euros',
        ['price'] = 80000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `euros`,
        ['shop'] = 'luxury',
    },
    ['jester4'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Jester RR',
        ['brand'] = 'Dinka',
        ['model'] = 'jester4',
        ['price'] = 240000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `jester4`,
        ['shop'] = 'luxury',
    },
    ['remus'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Remus',
        ['brand'] = 'Annis',
        ['model'] = 'remus',
        ['price'] = 48000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `remus`,
        ['shop'] = 'luxury',
    },
    ['comet6'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Comet S2',
        ['brand'] = 'Pfister',
        ['model'] = 'comet6',
        ['price'] = 230000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `comet6`,
        ['shop'] = 'luxury',
    },
    ['growler'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Growler',
        ['brand'] = 'Pfister',
        ['model'] = 'growler',
        ['price'] = 205000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `growler`,
        ['shop'] = 'luxury',
    },
    ['vectre'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Emperor Vectre',
        ['brand'] = 'Emperor',
        ['model'] = 'vectre',
        ['price'] = 80000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `vectre`,
        ['shop'] = 'luxury',
    },
    ['cypher'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Cypher',
        ['brand'] = 'Ubermacht',
        ['model'] = 'cypher',
        ['price'] = 155000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `cypher`,
        ['shop'] = 'luxury',
    },
    ['sultan3'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Sultan Classic Custom',
        ['brand'] = 'Karin',
        ['model'] = 'sultan3',
        ['price'] = 56000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `sultan3`,
        ['shop'] = 'luxury',
    },
    ['rt3000'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'RT3000',
        ['brand'] = 'Dinka',
        ['model'] = 'rt3000',
        ['price'] = 65000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `rt3000`,
        ['shop'] = 'luxury',
    },
    --- Sports Classic
    ['ardent'] = {
        ['name'] = 'Ardent',
        ['brand'] = 'Ocelot',
        ['model'] = 'ardent',
        ['price'] = 30000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `ardent`,
        ['shop'] = 'pdm',
    },
    ['btype'] = {              --meme car that goes pretty fast
        ['name'] = 'Roosevelt',
        ['brand'] = 'Albany',
        ['model'] = 'btype',
        ['price'] = 75000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `btype`,
        ['shop'] = 'pdm',
    },
    ['btype2'] = {
        ['name'] = 'Franken Stange',
        ['brand'] = 'Albany',
        ['model'] = 'btype2',
        ['price'] = 87000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `btype2`,
        ['shop'] = 'pdm',
    },
    ['btype3'] = {
        ['name'] = 'Roosevelt Valor',
        ['brand'] = 'Albany',
        ['model'] = 'btype3',
        ['price'] = 63000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `btype3`,
        ['shop'] = 'pdm',
    },
    ['casco'] = {
        ['name'] = 'Casco',
        ['brand'] = 'Lampadati',
        ['model'] = 'casco',
        ['price'] = 100000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `casco`,
        ['shop'] = 'pdm',
    },
    ['cheetah2'] = {
        ['name'] = 'Cheetah Classic',
        ['brand'] = 'Grotti',
        ['model'] = 'cheetah2',
        ['price'] = 195000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `cheetah2`,
        ['shop'] = 'luxury',
    },
    ['deluxo'] = {
        ['name'] = 'Deluxo',
        ['brand'] = 'Imponte',
        ['model'] = 'deluxo',
        ['price'] = 55000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `deluxo`,
        ['shop'] = 'pdm',
    },
    ['dynasty'] = {                            --DLC
        ['name'] = 'Dynasty',
        ['brand'] = 'Weeny',
        ['model'] = 'dynasty',
        ['price'] = 25000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `dynasty`,
        ['shop'] = 'pdm',
    },
    ['fagaloa'] = {
        ['name'] = 'Fagaloa',
        ['brand'] = 'Vulcar',
        ['model'] = 'fagaloa',
        ['price'] = 13000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `fagaloa`,
        ['shop'] = 'pdm',
    },
    ['feltzer3'] = {                            --DLC
        ['name'] = 'Stirling GT',
        ['brand'] = 'Benefactor',
        ['model'] = 'feltzer3',
        ['price'] = 115000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `feltzer3`,
        ['shop'] = 'pdm',
    },
    ['gt500'] = {
        ['name'] = 'GT500',
        ['brand'] = 'Grotti',
        ['model'] = 'gt500',
        ['price'] = 130000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `gt500`,
        ['shop'] = 'pdm',
    },
    ['infernus2'] = {
        ['name'] = 'Infernus Classic',
        ['brand'] = 'Pegassi',
        ['model'] = 'infernus2',
        ['price'] = 245000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `infernus2`,
        ['shop'] = 'pdm',
    },
    ['jb700'] = {
        ['name'] = 'JB 700',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'jb700',
        ['price'] = 240000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `jb700`,
        ['shop'] = 'pdm',
    },
    ['jb7002'] = {
        ['name'] = 'JB 700W',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'jb7002',
        ['price'] = 40000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `jb7002`,
        ['shop'] = 'pdm',
    },
    ['mamba'] = {
        ['name'] = 'Mamba',
        ['brand'] = 'Declasse',
        ['model'] = 'mamba',
        ['price'] = 140000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `mamba`,
        ['shop'] = 'pdm',
    },
    ['manana'] = {
        ['name'] = 'Manana',
        ['brand'] = 'Albany',
        ['model'] = 'manana',
        ['price'] = 12800,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `manana`,
        ['shop'] = 'pdm',
    },
    ['manana2'] = {
        ['name'] = 'Manana Custom',
        ['brand'] = 'Albany',
        ['model'] = 'manana2',
        ['price'] = 24000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `manana2`,
        ['shop'] = 'pdm',
    },
    ['michelli'] = {
        ['name'] = 'Michelli GT',
        ['brand'] = 'Lampadati',
        ['model'] = 'michelli',
        ['price'] = 30000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `michelli`,
        ['shop'] = 'pdm',
    },
    ['monroe'] = {
        ['name'] = 'Monroe',
        ['brand'] = 'Pegassi',
        ['model'] = 'monroe',
        ['price'] = 115000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `monroe`,
        ['shop'] = 'pdm',
    },
    ['nebula'] = {                            --DLC
        ['name'] = 'Nebula',
        ['brand'] = 'Vulcar',
        ['model'] = 'nebula',
        ['price'] = 22000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `nebula`,
        ['shop'] = 'pdm',
    },
    ['peyote'] = {
        ['name'] = 'Peyote',
        ['brand'] = 'Vapid',
        ['model'] = 'peyote',
        ['price'] = 23500,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `peyote`,
        ['shop'] = 'pdm',
    },
    ['peyote3'] = {
        ['name'] = 'Peyote Custom',
        ['brand'] = 'Vapid',
        ['model'] = 'peyote3',
        ['price'] = 48000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `peyote3`,
        ['shop'] = 'pdm',
    },
    ['pigalle'] = {
        ['name'] = 'Pigalle',
        ['brand'] = 'Lampadati',
        ['model'] = 'pigalle',
        ['price'] = 92000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `pigalle`,
        ['shop'] = 'pdm',
    },
    ['rapidgt3'] = {
        ['name'] = 'Rapid GT',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'rapidgt3',
        ['price'] = 90000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `rapidgt3`,
        ['shop'] = 'pdm',
    },
    ['retinue'] = {
        ['name'] = 'Retinue',
        ['brand'] = 'Vapid',
        ['model'] = 'retinue',
        ['price'] = 32000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `retinue`,
        ['shop'] = 'pdm',
    },
    ['retinue2'] = {
        ['name'] = 'Retinue MKII',
        ['brand'] = 'Vapid',
        ['model'] = 'retinue2',
        ['price'] = 38000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `retinue2`,
        ['shop'] = 'pdm',
    },
    ['savestra'] = {
        ['name'] = 'Savestra',
        ['brand'] = 'Annis',
        ['model'] = 'savestra',
        ['price'] = 67000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `savestra`,
        ['shop'] = 'pdm',
    },
    ['stinger'] = {
        ['name'] = 'Stinger',
        ['brand'] = 'Grotti',
        ['model'] = 'stinger',
        ['price'] = 39500,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `stinger`,
        ['shop'] = 'pdm',
    },
    ['stingergt'] = {
        ['name'] = 'Stinger GT',
        ['brand'] = 'Grotti',
        ['model'] = 'stingergt',
        ['price'] = 70000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `stingergt`,
        ['shop'] = 'pdm',
    },
    ['stromberg'] = {
        ['name'] = 'Stromberg',
        ['brand'] = 'Ocelot',
        ['model'] = 'stromberg',
        ['price'] = 80000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `stromberg`,
        ['shop'] = 'pdm',
    },
    ['swinger'] = {                            --DLC
        ['name'] = 'Swinger',
        ['brand'] = 'Ocelot',
        ['model'] = 'swinger',
        ['price'] = 221000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `swinger`,
        ['shop'] = 'pdm',
    },
    ['torero'] = {
        ['name'] = 'Torero',
        ['brand'] = 'Pegassi',
        ['model'] = 'torero',
        ['price'] = 84000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `torero`,
        ['shop'] = 'pdm',
    },
    ['tornado'] = {
        ['name'] = 'Tornado',
        ['brand'] = 'Declasse',
        ['model'] = 'tornado',
        ['price'] = 21000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `tornado`,
        ['shop'] = 'pdm',
    },
    ['tornado2'] = {
        ['name'] = 'Tornado Gang',
        ['brand'] = 'Declasse',
        ['model'] = 'tornado2',
        ['price'] = 22000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `tornado2`,
        ['shop'] = 'pdm',
    },
    ['tornado5'] = {
        ['name'] = 'Tornado Custom',
        ['brand'] = 'Declasse',
        ['model'] = 'tornado5',
        ['price'] = 22000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `tornado5`,
        ['shop'] = 'pdm',
    },
    ['turismo2'] = {
        ['name'] = 'Turismo Classic',
        ['brand'] = 'Grotti',
        ['model'] = 'turismo2',
        ['price'] = 170000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `turismo2`,
        ['shop'] = 'pdm',
    },
    ['viseris'] = {
        ['name'] = 'Viseris',
        ['brand'] = 'Lampadati',
        ['model'] = 'viseris',
        ['price'] = 210000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `viseris`,
        ['shop'] = 'pdm',
    },
    ['z190'] = {
        ['name'] = '190Z',
        ['brand'] = 'Karin',
        ['model'] = 'z190',
        ['price'] = 78000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `z190`,
        ['shop'] = 'pdm',
    },
    ['ztype'] = {
        ['name'] = 'Z-Type',
        ['brand'] = 'Truffade',
        ['model'] = 'ztype',
        ['price'] = 270000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `ztype`,
        ['shop'] = 'pdm',
    },
    ['zion3'] = {                            --DLC
        ['name'] = 'Zion Classic',
        ['brand'] = 'Übermacht',
        ['model'] = 'zion3',
        ['price'] = 45000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `zion3`,
        ['shop'] = 'pdm',
    },
    ['cheburek'] = {
        ['name'] = 'Cheburek',
        ['brand'] = 'Rune',
        ['model'] = 'cheburek',
        ['price'] = 7000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `cheburek`,
        ['shop'] = 'pdm',
    },
    ['toreador'] = {
        ['name'] = 'Toreador',
        ['brand'] = 'Pegassi',
        ['model'] = 'toreador',
        ['price'] = 50000,
        ['category'] = 'sportsclassics',
        ['categoryLabel'] = 'Sports Classics',
        ['hash'] = `toreador`,
        ['shop'] = 'pdm',
    },
    --- Super
    ['adder'] = {
        ['name'] = 'Adder',
        ['brand'] = 'Truffade',
        ['model'] = 'adder',
        ['price'] = 280000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `adder`,
        ['shop'] = 'luxury',
    },
    ['autarch'] = {
        ['name'] = 'Autarch',
        ['brand'] = 'Överflöd',
        ['model'] = 'autarch',
        ['price'] = 224000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `autarch`,
        ['shop'] = 'luxury',
    },
    ['banshee2'] = {
        ['name'] = 'Banshee 900R',
        ['brand'] = 'Bravado',
        ['model'] = 'banshee2',
        ['price'] = 120000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `banshee2`,
        ['shop'] = 'luxury',
    },
    ['bullet'] = {
        ['name'] = 'Bullet',
        ['brand'] = 'Vapid',
        ['model'] = 'bullet',
        ['price'] = 120000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `bullet`,
        ['shop'] = 'luxury',
    },
    ['cheetah'] = {
        ['name'] = 'Cheetah',
        ['brand'] = 'Grotti',
        ['model'] = 'cheetah',
        ['price'] = 214000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `cheetah`,
        ['shop'] = 'luxury',
    },
    ['cyclone'] = {         --might be too overpowered
        ['name'] = 'Cyclone',
        ['brand'] = 'Coil',
        ['model'] = 'cyclone',
        ['price'] = 300000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `cyclone`,
        ['shop'] = 'luxury',
    },
    ['entity2'] = {
        ['name'] = 'Entity XXR',
        ['brand'] = 'Överflöd',
        ['model'] = 'entity2',
        ['price'] = 164000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `entity2`,
        ['shop'] = 'luxury',
    },
    ['entityxf'] = {
        ['name'] = 'Entity XF',
        ['brand'] = 'Överflöd',
        ['model'] = 'entityxf',
        ['price'] = 180000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `entityxf`,
        ['shop'] = 'luxury',
    },
    ['emerus'] = {                            --DLC
        ['name'] = 'Emerus',
        ['brand'] = 'Progen',
        ['model'] = 'emerus',
        ['price'] = 220000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `emerus`,
        ['shop'] = 'luxury',
    },
    ['fmj'] = {
        ['name'] = 'FMJ',
        ['brand'] = 'Vapid',
        ['model'] = 'fmj',
        ['price'] = 125000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `fmj`,
        ['shop'] = 'luxury',
    },
    ['furia'] = {
        ['name'] = 'Furia',
        ['brand'] = 'Grotti',
        ['model'] = 'furia',
        ['price'] = 230000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `furia`,
        ['shop'] = 'luxury',
    },
    ['gp1'] = {
        ['name'] = 'GP1',
        ['brand'] = 'Progen',
        ['model'] = 'gp1',
        ['price'] = 110000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `gp1`,
        ['shop'] = 'luxury',
    },
    ['infernus'] = {
        ['name'] = 'Infernus',
        ['brand'] = 'Pegassi',
        ['model'] = 'infernus',
        ['price'] = 235000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `infernus`,
        ['shop'] = 'luxury',
    },
    ['italigtb'] = {
        ['name'] = 'Itali GTB',
        ['brand'] = 'Progen',
        ['model'] = 'italigtb',
        ['price'] = 170000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `italigtb`,
        ['shop'] = 'luxury',
    },
    ['italigtb2'] = {
        ['name'] = 'Itali GTB',
        ['brand'] = 'Progen',
        ['model'] = 'italigtb2',
        ['price'] = 250000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `italigtb2`,
        ['shop'] = 'luxury',
    },
    ['krieger'] = {                            --DLC
        ['name'] = 'Krieger',
        ['brand'] = 'Benefactor',
        ['model'] = 'krieger',
        ['price'] = 222000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `krieger`,
        ['shop'] = 'luxury',
    },
    ['le7b'] = {
        ['name'] = 'RE-7B',
        ['brand'] = 'Annis',
        ['model'] = 'le7b',
        ['price'] = 260000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `le7b`,
        ['shop'] = 'luxury',
    },
    ['nero'] = {
        ['name'] = 'Nero',
        ['brand'] = 'Truffade',
        ['model'] = 'nero',
        ['price'] = 200000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `nero`,
        ['shop'] = 'luxury',
    },
    ['nero2'] = {
        ['name'] = 'Nero Custom',
        ['brand'] = 'Truffade',
        ['model'] = 'nero2',
        ['price'] = 260000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `nero2`,
        ['shop'] = 'luxury',
    },
    ['osiris'] = {
        ['name'] = 'Osiris',
        ['brand'] = 'Pegassi',
        ['model'] = 'osiris',
        ['price'] = 220000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `osiris`,
        ['shop'] = 'luxury',
    },
    ['penetrator'] = {
        ['name'] = 'Penetrator',
        ['brand'] = 'Ocelot',
        ['model'] = 'penetrator',
        ['price'] = 130000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `penetrator`,
        ['shop'] = 'luxury',
    },
    ['pfister811'] = {
        ['name'] = '811',
        ['brand'] = 'Pfister',
        ['model'] = 'pfister811',
        ['price'] = 220000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `pfister811`,
        ['shop'] = 'luxury',
    },
    ['prototipo'] = {
        ['name'] = 'X80 Proto',
        ['brand'] = 'Grotti',
        ['model'] = 'prototipo',
        ['price'] = 235000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `prototipo`,
        ['shop'] = 'luxury',
    },
    ['reaper'] = {
        ['name'] = 'Reaper',
        ['brand'] = 'Pegassi',
        ['model'] = 'reaper',
        ['price'] = 100000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `reaper`,
        ['shop'] = 'luxury',
    },
    ['s80'] = {                            --DLC
        ['name'] = 'S80RR',
        ['brand'] = 'Annis',
        ['model'] = 's80',
        ['price'] = 205000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `s80`,
        ['shop'] = 'luxury',
    },
    ['sc1'] = {
        ['name'] = 'SC1',
        ['brand'] = 'Übermacht',
        ['model'] = 'sc1',
        ['price'] = 90000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `sc1`,
        ['shop'] = 'luxury',
    },
    ['sheava'] = {                            --DLC
        ['name'] = 'ETR1',
        ['brand'] = 'Emperor',
        ['model'] = 'sheava',
        ['price'] = 220000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `sheava`,
        ['shop'] = 'luxury',
    },
    ['sultanrs'] = {
        ['name'] = 'Sultan RS',
        ['brand'] = 'Karin',
        ['model'] = 'sultanrs',
        ['price'] = 76500,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `sultanrs`,
        ['shop'] = 'luxury',
    },
    ['t20'] = {
        ['name'] = 'T20',
        ['brand'] = 'Progen',
        ['model'] = 't20',
        ['price'] = 1650000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `t20`,
        ['shop'] = 'luxury',
    },
    ['taipan'] = {
        ['name'] = 'Taipan',
        ['brand'] = 'Cheval',
        ['model'] = 'taipan',
        ['price'] = 1850000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `taipan`,
        ['shop'] = 'luxury',
    },
    ['tempesta'] = {
        ['name'] = 'Tempesta',
        ['brand'] = 'Pegassi',
        ['model'] = 'tempesta',
        ['price'] = 120000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `tempesta`,
        ['shop'] = 'luxury',
    },
    ['tezeract'] = {
        ['name'] = 'Tezeract',
        ['brand'] = 'Pegassi',
        ['model'] = 'tezeract',
        ['price'] = 220000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `tezeract`,
        ['shop'] = 'luxury',
    },
    ['thrax'] = {                            --DLC
        ['name'] = 'Thrax',
        ['brand'] = 'Truffade',
        ['model'] = 'thrax',
        ['price'] = 180000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `thrax`,
        ['shop'] = 'luxury',
    },
    ['tigon'] = {
        ['name'] = 'Tigon',
        ['brand'] = 'Lampadati',
        ['model'] = 'tigon',
        ['price'] = 240000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `tigon`,
        ['shop'] = 'luxury',
    },
    ['turismor'] = {
        ['name'] = 'Turismo R',
        ['brand'] = 'Grotti',
        ['model'] = 'turismor',
        ['price'] = 140000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `turismor`,
        ['shop'] = 'luxury',
    },
    ['tyrant'] = {
        ['name'] = 'Tyrant',
        ['brand'] = 'Överflöd',
        ['model'] = 'tyrant',
        ['price'] = 2100000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `tyrant`,
        ['shop'] = 'luxury',
    },
    ['tyrus'] = {
        ['name'] = 'Tyrus',
        ['brand'] = 'Progen',
        ['model'] = 'tyrus',
        ['price'] = 230000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `tyrus`,
        ['shop'] = 'luxury',
    },
    ['vacca'] = {
        ['name'] = 'Vacca',
        ['brand'] = 'Pegassi',
        ['model'] = 'vacca',
        ['price'] = 105000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `vacca`,
        ['shop'] = 'luxury',
    },
    ['vagner'] = {
        ['name'] = 'Vagner',
        ['brand'] = 'Dewbauchee',
        ['model'] = 'vagner',
        ['price'] = 1660000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `vagner`,
        ['shop'] = 'luxury',
    },
    ['visione'] = {
        ['name'] = 'Visione',
        ['brand'] = 'Grotti',
        ['model'] = 'visione',
        ['price'] = 750000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `visione`,
        ['shop'] = 'luxury',
    },
    ['voltic'] = {
        ['name'] = 'Voltic',
        ['brand'] = 'Coil',
        ['model'] = 'voltic',
        ['price'] = 120000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `voltic`,
        ['shop'] = 'luxury',
    },
    ['voltic2'] = {
        ['name'] = 'Rocket Voltic',
        ['brand'] = 'Coil',
        ['model'] = 'voltic2',
        ['price'] = 9830400,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `voltic2`,
        ['shop'] = 'luxury',
    },
    ['xa21'] = {
        ['name'] = 'XA-21',
        ['brand'] = 'Ocelot',
        ['model'] = 'xa21',
        ['price'] = 180000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `xa21`,
        ['shop'] = 'luxury',
    },
    ['zentorno'] = {
        ['name'] = 'Zentorno',
        ['brand'] = 'Pegassi',
        ['model'] = 'zentorno',
        ['price'] = 340000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `zentorno`,
        ['shop'] = 'luxury',
    },
    ['zorrusso'] = {                            --DLC
        ['name'] = 'Zorrusso',
        ['brand'] = 'Pegassi',
        ['model'] = 'zorrusso',
        ['price'] = 277000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `zorrusso`,
        ['shop'] = 'luxury',
    },
    -- Vans
    ['bison'] = {
        ['name'] = 'Bison',
        ['brand'] = 'Bravado',
        ['model'] = 'bison',
        ['price'] = 18000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `bison`,
        ['shop'] = 'pdm',
    },
    ['bobcatxl'] = {
        ['name'] = 'Bobcat XL Open',
        ['brand'] = 'Vapid',
        ['model'] = 'bobcatxl',
        ['price'] = 13500,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `bobcatxl`,
        ['shop'] = 'pdm',
    },
    ['burrito3'] = {
        ['name'] = 'Burrito',
        ['brand'] = 'Declasse',
        ['model'] = 'burrito3',
        ['price'] = 4000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `burrito3`,
        ['shop'] = 'pdm',
    },
    ['gburrito2'] = {
        ['name'] = 'Burrito Custom',
        ['brand'] = 'Declasse',
        ['model'] = 'gburrito2',
        ['price'] = 11500,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `gburrito2`,
        ['shop'] = 'pdm',
    },
    ['rumpo'] = {
        ['name'] = 'Rumpo',
        ['brand'] = 'Bravado',
        ['model'] = 'rumpo',
        ['price'] = 9000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `rumpo`,
        ['shop'] = 'pdm',
    },
    ['journey'] = {
        ['name'] = 'Journey',
        ['brand'] = 'Zirconium',
        ['model'] = 'journey',
        ['price'] = 6500,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `journey`,
        ['shop'] = 'pdm',
    },
    ['minivan'] = {
        ['name'] = 'Minivan',
        ['brand'] = 'Vapid',
        ['model'] = 'minivan',
        ['price'] = 7000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `minivan`,
        ['shop'] = 'pdm',
    },
    ['minivan2'] = {
        ['name'] = 'Minivan Custom',
        ['brand'] = 'Vapid',
        ['model'] = 'minivan2',
        ['price'] = 10000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `minivan2`,
        ['shop'] = 'pdm',
    },
    ['paradise'] = {
        ['name'] = 'Paradise',
        ['brand'] = 'Bravado',
        ['model'] = 'paradise',
        ['price'] = 9000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `paradise`,
        ['shop'] = 'pdm',
    },
    ['rumpo3'] = {
        ['name'] = 'Rumpo Custom',
        ['brand'] = 'Bravado',
        ['model'] = 'rumpo3',
        ['price'] = 19500,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `rumpo3`,
        ['shop'] = 'pdm',
    },
    ['speedo'] = {
        ['name'] = 'Speedo',
        ['brand'] = 'Vapid',
        ['model'] = 'speedo',
        ['price'] = 10000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `speedo`,
        ['shop'] = 'pdm',
    },
    ['speedo4'] = {
        ['name'] = 'Speedo Custom',
        ['brand'] = 'Vapid',
        ['model'] = 'speedo4',
        ['price'] = 15000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `speedo4`,
        ['shop'] = 'pdm',
    },
    ['surfer'] = {
        ['name'] = 'Surfer',
        ['brand'] = 'BF',
        ['model'] = 'surfer',
        ['price'] = 9000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `surfer`,
        ['shop'] = 'pdm',
    },
    ['youga3'] = {
        ['name'] = 'Youga Classic 4x4',
        ['brand'] = 'Bravado',
        ['model'] = 'youga3',
        ['price'] = 15000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `youga3`,
        ['shop'] = 'pdm',
    },
    ['youga'] = {
        ['name'] = 'Youga',
        ['brand'] = 'Bravado',
        ['model'] = 'youga',
        ['price'] = 8000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `youga`,
        ['shop'] = 'pdm',
    },
    ['youga2'] = {
        ['name'] = 'Youga Classic',
        ['brand'] = 'Bravado',
        ['model'] = 'youga2',
        ['price'] = 14500,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `youga2`,
        ['shop'] = 'pdm',
    },
    ['youga4'] = {          --DLC +set sv_enforceGameBuild 2545
        ['name'] = 'Youga',
        ['brand'] = 'Bravado',
        ['model'] = 'youga4',
        ['price'] = 85000,
        ['category'] = 'vans',
        ['categoryLabel'] = 'Vans',
        ['hash'] = `youga4`,
        ['shop'] = 'pdm',
    },
    -- Utility
    ['sadler'] = {
        ['name'] = 'Sadler',
        ['brand'] = 'Vapid',
        ['model'] = 'sadler',
        ['price'] = 20000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `sadler`,
        ['shop'] = 'pdm',
    },
    ['slamtruck'] = {
        ['name'] = 'Slam Truck',
        ['brand'] = 'Vapid',
        ['model'] = 'slamtruck',
        ['price'] = 100000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `slamtruck`,
        ['shop'] = 'pdm',
    },
    ['warrener2'] = {                            --DLC +set sv_enforceGameBuild 2372
        ['name'] = 'Warrener HKR',
        ['brand'] = 'Vulcar',
        ['model'] = 'warrener2',
        ['price'] = 30000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `warrener2`,
        ['shop'] = 'pdm',
    },
        -- Boats
    ['squalo'] = {
        ['name'] = 'Squalo',
        ['brand'] = 'Shitzu',
        ['model'] = 'squalo',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `squalo`,
        ['shop'] = 'boats',
    },
    ['marquis'] = {
        ['name'] = 'Marquis',
        ['brand'] = 'Dinka',
        ['model'] = 'marquis',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `marquis`,
        ['shop'] = 'boats',
    },
    ['seashark'] = {
        ['name'] = 'Seashark',
        ['brand'] = 'Speedophile',
        ['model'] = 'seashark',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `seashark`,
        ['shop'] = 'boats',
    },
    ['seashark2'] = {
        ['name'] = 'Seashark',
        ['brand'] = 'Speedophile',
        ['model'] = 'seashark2',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `seashark2`,
        ['shop'] = 'boats',
    },
    ['seashark3'] = {
        ['name'] = 'Seashark',
        ['brand'] = 'Speedophile',
        ['model'] = 'seashark3',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `seashark3`,
        ['shop'] = 'boats',
    },
    ['jetmax'] = {
        ['name'] = 'Shitzu',
        ['brand'] = 'Jetmax',
        ['model'] = 'jetmax',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `jetmax`,
        ['shop'] = 'boats',
    },
    ['tropic'] = {
        ['name'] = 'Shitzu',
        ['brand'] = 'Tropic',
        ['model'] = 'tropic',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `tropic`,
        ['shop'] = 'boats',
    },
    ['tropic2'] = {
        ['name'] = 'Shitzu',
        ['brand'] = 'Tropic',
        ['model'] = 'tropic2',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `tropic2`,
        ['shop'] = 'boats',
    },
    ['dinghy'] = {
        ['name'] = 'Nagasaki',
        ['brand'] = 'Dinghy',
        ['model'] = 'dinghy',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `dinghy`,
        ['shop'] = 'boats',
    },
    ['dinghy2'] = {
        ['name'] = 'Nagasaki',
        ['brand'] = 'Dinghy',
        ['model'] = 'dinghy2',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `dinghy2`,
        ['shop'] = 'boats',
    },
    ['dinghy3'] = {
        ['name'] = 'Nagasaki',
        ['brand'] = 'Dinghy',
        ['model'] = 'dinghy3',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `dinghy3`,
        ['shop'] = 'boats',
    },
    ['dinghy4'] = {
        ['name'] = 'Nagasaki',
        ['brand'] = 'Dinghy',
        ['model'] = 'dinghy4',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `dinghy4`,
        ['shop'] = 'boats',
    },
    ['suntrap'] = {
        ['name'] = 'Shitzu',
        ['brand'] = 'Suntrap',
        ['model'] = 'suntrap',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `suntrap`,
        ['shop'] = 'boats',
    },
    ['speeder'] = {
        ['name'] = 'Speeder',
        ['brand'] = 'Pegassi',
        ['model'] = 'speeder',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `speeder`,
        ['shop'] = 'boats',
    },
    ['speeder2'] = {
        ['name'] = 'Speeder',
        ['brand'] = 'Pegassi',
        ['model'] = 'speeder2',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `speeder2`,
        ['shop'] = 'boats',
    },
    ['longfin'] = {
        ['name'] = 'Longfin',
        ['brand'] = 'Shitzu',
        ['model'] = 'longfin',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `longfin`,
        ['shop'] = 'boats',
    },
    ['toro'] = {
        ['name'] = 'Toro',
        ['brand'] = 'Lampadati',
        ['model'] = 'toro',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `toro`,
        ['shop'] = 'boats',
    },
    ['toro2'] = {
        ['name'] = 'Toro',
        ['brand'] = 'Lampadati',
        ['model'] = 'toro2',
        ['price'] = 40000,
        ['category'] = 'boats',
        ['categoryLabel'] = 'Boats',
        ['hash'] = `toro2`,
        ['shop'] = 'boats',
    },
    -- helicopters
    ['buzzard2'] = {
        ['name'] = 'Buzzard',
        ['brand'] = 'Unknown',
        ['model'] = 'buzzard2',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `buzzard2`,
        ['shop'] = 'air',
    },
    ['frogger'] = {
        ['name'] = 'Frogger',
        ['brand'] = 'Unknown',
        ['model'] = 'frogger',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `frogger`,
        ['shop'] = 'air',
    },
    ['frogger2'] = {
        ['name'] = 'Frogger',
        ['brand'] = 'Unknown',
        ['model'] = 'frogger2',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `frogger2`,
        ['shop'] = 'air',
    },
    ['maverick'] = {
        ['name'] = 'Maverick',
        ['brand'] = 'Unknown',
        ['model'] = 'maverick',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `maverick`,
        ['shop'] = 'air',
    },
    ['swift'] = {
        ['name'] = 'Swift',
        ['brand'] = 'Buckingham',
        ['model'] = 'swift',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `swift`,
        ['shop'] = 'air',
    },
    ['swift2'] = {
        ['name'] = 'Swift',
        ['brand'] = 'Buckingham',
        ['model'] = 'swift2',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `swift2`,
        ['shop'] = 'air',
    },
    ['seasparrow'] = {
        ['name'] = 'Sea Sparrow',
        ['brand'] = 'Unknown',
        ['model'] = 'seasparrow',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `seasparrow`,
        ['shop'] = 'air',
    },
    ['seasparrow2'] = {
        ['name'] = 'Sparrow',
        ['brand'] = 'Unknown',
        ['model'] = 'seasparrow2',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `seasparrow2`,
        ['shop'] = 'air',
    },
    ['seasparrow3'] = {
        ['name'] = 'Sparrow',
        ['brand'] = 'Unknown',
        ['model'] = 'seasparrow3',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `seasparrow3`,
        ['shop'] = 'air',
    },
    ['supervolito'] = {
        ['name'] = 'SuperVolito',
        ['brand'] = 'Buckingham',
        ['model'] = 'supervolito',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `supervolito`,
        ['shop'] = 'air',
    },
    ['supervolito2'] = {
        ['name'] = 'SuperVolito Carbon',
        ['brand'] = 'Buckingham',
        ['model'] = 'supervolito2',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `supervolito2`,
        ['shop'] = 'air',
    },
    ['volatus'] = {
        ['name'] = 'Volatus',
        ['brand'] = 'Buckingham',
        ['model'] = 'volatus',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `volatus`,
        ['shop'] = 'air',
    },
    ['havok'] = {
        ['name'] = 'Havok',
        ['brand'] = 'Nagasaki',
        ['model'] = 'havok',
        ['price'] = 52000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `havok`,
        ['shop'] = 'air',
    },
    -- Planes
    ['duster'] = {
        ['name'] = 'Duster',
        ['brand'] = 'Unknown',
        ['model'] = 'duster',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `duster`,
        ['shop'] = 'air',
    },
    ['luxor'] = {
        ['name'] = 'Luxor',
        ['brand'] = 'Buckingham',
        ['model'] = 'luxor',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `luxor`,
        ['shop'] = 'air',
    },
    ['luxor2'] = {
        ['name'] = 'Luxor Deluxe',
        ['brand'] = 'Buckingham',
        ['model'] = 'luxor2',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `luxor2`,
        ['shop'] = 'air',
    },
    ['stunt'] = {
        ['name'] = 'Mallard',
        ['brand'] = 'Unknown',
        ['model'] = 'stunt',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `stunt`,
        ['shop'] = 'air',
    },
    ['mammatus'] = {
        ['name'] = 'Mammatus',
        ['brand'] = 'Unknown',
        ['model'] = 'mammatus',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `mammatus`,
        ['shop'] = 'air',
    },
    ['velum'] = {
        ['name'] = 'Velum',
        ['brand'] = 'Unknown',
        ['model'] = 'velum',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `velum`,
        ['shop'] = 'air',
    },
    ['velum2'] = {
        ['name'] = 'Velum',
        ['brand'] = 'Unknown',
        ['model'] = 'velum2',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `velum2`,
        ['shop'] = 'air',
    },
    ['shamal'] = {
        ['name'] = 'Shamal',
        ['brand'] = 'Buckingham',
        ['model'] = 'shamal',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `shamal`,
        ['shop'] = 'air',
    },
    ['vestra'] = {
        ['name'] = 'Vestra',
        ['brand'] = 'Buckingham',
        ['model'] = 'vestra',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `vestra`,
        ['shop'] = 'air',
    },
    ['dodo'] = {
        ['name'] = 'Dodo',
        ['brand'] = 'Mammoth',
        ['model'] = 'dodo',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `dodo`,
        ['shop'] = 'air',
    },
    ['howard'] = {
        ['name'] = 'Howard NX-25',
        ['brand'] = 'Buckingham',
        ['model'] = 'howard',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `howard`,
        ['shop'] = 'air',
    },
    ['alphaz1'] = {
        ['name'] = 'Alpha-Z1',
        ['brand'] = 'Buckingham',
        ['model'] = 'alphaz1',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `alphaz1`,
        ['shop'] = 'air',
    },
    ['nimbus'] = {
        ['name'] = 'Nimbus',
        ['brand'] = 'Buckingham',
        ['model'] = 'nimbus',
        ['price'] = 45000,
        ['category'] = 'planes',
        ['categoryLabel'] = 'Planes',
        ['hash'] = `nimbus`,
        ['shop'] = 'air',
    },
    ['brioso3'] = {          --DLC +set sv_enforceGameBuild 2699 (and below)
        ['name'] = 'Brioso 300 Widebody',
        ['brand'] = 'Grotti',
        ['model'] = 'brioso3',
        ['price'] = 125000,
        ['category'] = 'compacts',
        ['categoryLabel'] = 'Compacts',
        ['hash'] = `brioso3`,
        ['shop'] = 'pdm',
    },
    ['conada'] = {
        ['name'] = 'Conada',
        ['brand'] = 'Buckingham',
        ['model'] = 'conada',
        ['price'] = 115000,
        ['category'] = 'helicopters',
        ['categoryLabel'] = 'Helicopters',
        ['hash'] = `conada`,
        ['shop'] = 'air',
    },
    ['corsita'] = {
        ['name'] = 'Corsita',
        ['brand'] = 'Lampadati',
        ['model'] = 'corsita',
        ['price'] = 90000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `corsita`,
        ['shop'] = 'luxury',
    },
    ['draugur'] = {
        ['name'] = 'Draugur',
        ['brand'] = 'Declasse',
        ['model'] = 'draugur',
        ['price'] = 99000,
        ['category'] = 'offroad',
        ['categoryLabel'] = 'Off Road',
        ['hash'] = `draugur`,
        ['shop'] = 'pdm',
    },
    ['greenwood'] = {
        ['name'] = 'Greenwood',
        ['brand'] = 'Bravado',
        ['model'] = 'greenwood',
        ['price'] = 105000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `greenwood`,
        ['shop'] = 'pdm',
    },
    ['kanjosj'] = {
        ['name'] = 'Kanjo SJ',
        ['brand'] = 'Dinka',
        ['model'] = 'kanjosj',
        ['price'] = 143000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `kanjosj`,
        ['shop'] = 'pdm',
    },
    ['lm87'] = {
        ['name'] = 'LM87',
        ['brand'] = 'Benefactor',
        ['model'] = 'lm87',
        ['price'] = 155000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `lm87`,
        ['shop'] = 'luxury',
    },
    ['omnisegt'] = {
        ['name'] = 'Omnis e-GT',
        ['brand'] = 'Obey',
        ['model'] = 'omnisegt',
        ['price'] = 185000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `omnisegt`,
        ['shop'] = 'luxury',
    },
    ['postlude'] = {
        ['name'] = 'Postlude',
        ['brand'] = 'Dinka',
        ['model'] = 'postlude',
        ['price'] = 90000,
        ['category'] = 'coupes',
        ['categoryLabel'] = 'Coupes',
        ['hash'] = `postlude`,
        ['shop'] = 'pdm',
    },
    ['rhinehart'] = {
        ['name'] = 'Rhinehart',
        ['brand'] = 'Ubermacht',
        ['model'] = 'rhinehart ',
        ['price'] = 105000,
        ['category'] = 'sedans',
        ['categoryLabel'] = 'Sedans',
        ['hash'] = `rhinehart`,
        ['shop'] = 'pdm',
    },
    ['ruiner4'] = {
        ['name'] = 'Ruiner ZZ-8',
        ['brand'] = 'Imponte',
        ['model'] = 'ruiner4',
        ['price'] = 85000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `ruiner4`,
        ['shop'] = 'pdm',
    },
    ['sentinel4'] = {
        ['name'] = 'Sentinel Classic Widebody',
        ['brand'] = 'Ubermacht',
        ['model'] = 'sentinel4',
        ['price'] = 140000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `sentinel4`,
        ['shop'] = 'luxury',
    },
    ['sm722'] = {
        ['name'] = 'SM722',
        ['brand'] = 'Benefactor',
        ['model'] = 'sm722',
        ['price'] = 125000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `sm722`,
        ['shop'] = 'luxury',
    },
    ['tenf'] = {
        ['name'] = '10F',
        ['brand'] = 'Obey',
        ['model'] = 'tenf',
        ['price'] = 185000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `tenf`,
        ['shop'] = 'luxury',
    },
    ['tenf2'] = {
        ['name'] = '10F Widebody',
        ['brand'] = 'Obey',
        ['model'] = 'tenf2',
        ['price'] = 215000,
        ['category'] = 'sports',
        ['categoryLabel'] = 'Sports',
        ['hash'] = `tenf2`,
        ['shop'] = 'luxury',
    },
    ['torero2'] = {
        ['name'] = 'Torero XO',
        ['brand'] = 'Pegassi',
        ['model'] = 'torero2',
        ['price'] = 245000,
        ['category'] = 'super',
        ['categoryLabel'] = 'Super',
        ['hash'] = `torero2`,
        ['shop'] = 'luxury',
    },
    ['vigero2'] = {
        ['name'] = 'Vigero ZX',
        ['brand'] = 'Declasse',
        ['model'] = 'vigero2',
        ['price'] = 105000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `vigero2`,
        ['shop'] = 'pdm',
    },
    ['weevil2'] = {
        ['name'] = 'Weevil Custom',
        ['brand'] = 'BF',
        ['model'] = 'weevil2',
        ['price'] = 95000,
        ['category'] = 'muscle',
        ['categoryLabel'] = 'Muscle',
        ['hash'] = `weevil2`,
        ['shop'] = 'pdm',
    },
    ['hauler'] = {
        ['name'] = 'Hauler',
        ['brand'] = 'Jobuilt',
        ['model'] = 'hauler',
        ['price'] = 100000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `Hauler`,
        ['shop'] = 'truck',
    },
    ['packer'] = {
        ['name'] = 'Packer',
        ['brand'] = 'MTL',
        ['model'] = 'packer',
        ['price'] = 100000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `packer`,
        ['shop'] = 'truck',
    },
    ['stockade'] = {
        ['name'] = 'stockade',
        ['brand'] = 'Brute',
        ['model'] = 'stockade',
        ['price'] = 100000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `stockade`,
        ['shop'] = 'truck',
    },
    ['biff'] = {
        ['name'] = 'biff',
        ['brand'] = 'Brute',
        ['model'] = 'biff',
        ['price'] = 100000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `biff`,
        ['shop'] = 'truck',
    },
    ['phantom'] = {
        ['name'] = 'Phantom',
        ['brand'] = 'Jobuilt',
        ['model'] = 'phantom',
        ['price'] = 100000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `Phantom`,
        ['shop'] = 'truck',
    },
    ['phantom3'] = {
        ['name'] = 'Phantom Custom',
        ['brand'] = 'Jobuilt',
        ['model'] = 'phantom3',
        ['price'] = 110000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `Phantom Custom`,
        ['shop'] = 'truck',
    },
    ['benson'] = {
        ['name'] = 'Benson',
        ['brand'] = 'Vapid',
        ['model'] = 'benson',
        ['price'] = 55000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `benson`,
        ['shop'] = 'truck',
    },
    ['mule'] = {
        ['name'] = 'Mule',
        ['brand'] = 'Maibatsu',
        ['model'] = 'mule',
        ['price'] = 40000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `mule`,
        ['shop'] = 'truck',
    },
    ['mule2'] = {
        ['name'] = 'Mule with Drop Door',
        ['brand'] = 'Maibatsu',
        ['model'] = 'mule2',
        ['price'] = 40000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `mule2`,
        ['shop'] = 'truck',
    },
    ['mule3'] = {
        ['name'] = 'Mule with Swinging Doors',
        ['brand'] = 'Maibatsu',
        ['model'] = 'mule3',
        ['price'] = 40000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `mule3`,
        ['shop'] = 'truck',
    },
    ['mule4'] = {
        ['name'] = 'Mule with Swinging Doors & Side Step',
        ['brand'] = 'Maibatsu',
        ['model'] = 'mule4',
        ['price'] = 40000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `mule4`,
        ['shop'] = 'truck',
    },
    ['mule5'] = {
        ['name'] = 'Mule with Swinging Doors & Step Bumper',
        ['brand'] = 'Maibatsu',
        ['model'] = 'mule5',
        ['price'] = 40000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `mule5`,
        ['shop'] = 'truck',
    },
    ['pounder'] = {
        ['name'] = 'Pounder',
        ['brand'] = 'MTL',
        ['model'] = 'pounder',
        ['price'] = 55000,
        ['category'] = 'commercial',
        ["categoryLabel"] = 'Commercial',
        ['hash'] = `pounder`,
        ['shop'] = 'truck',
    },
    ['boxville'] = {
        ['name'] = 'Boxville',
        ['brand'] = 'Brute',
        ['model'] = 'boxville',
        ['price'] = 45000,
        ['category'] = 'vans',
        ["categoryLabel"] = 'Vans',
        ['hash'] = `boxville`,
        ['shop'] = 'truck',
    },
    ['boxville2'] = {
        ['name'] = 'Boxville2',
        ['brand'] = 'Brute',
        ['model'] = 'boxville2',
        ['price'] = 45000,
        ['category'] = 'vans',
        ["categoryLabel"] = 'Vans',
        ['hash'] = `boxville2`,
        ['shop'] = 'truck',
    },
    ['boxville3'] = {
        ['name'] = 'Boxville3',
        ['brand'] = 'Brute',
        ['model'] = 'boxville3',
        ['price'] = 45000,
        ['category'] = 'vans',
        ["categoryLabel"] = 'Vans',
        ['hash'] = `boxville3`,
        ['shop'] = 'truck',
    },
    ['boxville4'] = {
        ['name'] = 'Boxville4',
        ['brand'] = 'Brute',
        ['model'] = 'boxville4',
        ['price'] = 45000,
        ['category'] = 'vans',
        ["categoryLabel"] = 'Vans',
        ['hash'] = `boxville4`,
        ['shop'] = 'truck',
    },
    ['boxville5'] = {
        ['name'] = 'Armored Boxville',
        ['brand'] = 'Brute',
        ['model'] = 'boxville5',
        ['price'] = 45000,
        ['category'] = 'vans',
        ["categoryLabel"] = 'Vans',
        ['hash'] = `boxville4`,
        ['shop'] = 'truck',
    },
    ['pony'] = {
        ['name'] = 'Pony',
        ['brand'] = 'Brute',
        ['model'] = 'pony',
        ['price'] = 45000,
        ['category'] = 'vans',
        ["categoryLabel"] = 'Vans',
        ['hash'] = `pony`,
        ['shop'] = 'truck',
    },
    ['pony2'] = {
        ['name'] = 'Pony 2',
        ['brand'] = 'Brute',
        ['model'] = 'pony2',
        ['price'] = 45000,
        ['category'] = 'vans',
        ["categoryLabel"] = 'Vans',
        ['hash'] = `pony2`,
        ['shop'] = 'truck',
    },
    ['taco'] = {
        ['name'] = 'Taco Truck',
        ['brand'] = 'Brute',
        ['model'] = 'taco',
        ['price'] = 45000,
        ['category'] = 'vans',
        ["categoryLabel"] = 'Food Truck',
        ['hash'] = `taco`,
        ['shop'] = 'truck',
    },
    ['cutter'] = {
        ['name'] = 'cutter',
        ['brand'] = 'HVY',
        ['model'] = 'cutter',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `cutter`,
        ['shop'] = 'truck',
    },
    ['handler'] = {
        ['name'] = 'Dock Handler',
        ['brand'] = 'HVY',
        ['model'] = 'handler',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `handler`,
        ['shop'] = 'truck',
    },
    ['bulldoze'] = {
        ['name'] = 'Bulldozer',
        ['brand'] = 'HVY',
        ['model'] = 'bulldoze',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `bulldoze`,
        ['shop'] = 'truck',
    },
    ['dump'] = {
        ['name'] = 'HVY Dump Truck (Off Road)',
        ['brand'] = 'HVY',
        ['model'] = 'dump',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `dump`,
        ['shop'] = 'truck',
    },
    ['flatbed'] = {
        ['name'] = 'Flatbed Truck',
        ['brand'] = 'MTL',
        ['model'] = 'flatbed',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `flatbed`,
        ['shop'] = 'truck',
    },
    ['guardian'] = {
        ['name'] = 'Guardian',
        ['brand'] = 'Vapid',
        ['model'] = 'guardian',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `guardian`,
        ['shop'] = 'truck',
    },
    ['mixer'] = {
        ['name'] = 'Cement Mixer',
        ['brand'] = 'HVY',
        ['model'] = 'mixer',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `mixer`,
        ['shop'] = 'truck',
    },
    ['mixer2'] = {
        ['name'] = 'Mixer2',
        ['brand'] = 'HVY',
        ['model'] = 'mixer2',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `mixer2`,
        ['shop'] = 'truck',
    },
    ['rubble'] = {
        ['name'] = 'Jobuilt Dump Truck (Street Legal)',
        ['brand'] = 'Jobuilt',
        ['model'] = 'rubble',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `rubble`,
        ['shop'] = 'truck',
    },
    ['tiptruck'] = {
        ['name'] = 'Brute Dump Truck (Street Legal)',
        ['brand'] = 'Brute',
        ['model'] = 'tiptruck',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `tiptruck`,
        ['shop'] = 'truck',
    },
    ['tiptruck2'] = {
        ['name'] = 'MTL Dump Truck (Street Legal)',
        ['brand'] = 'MTL',
        ['model'] = 'tiptruck2',
        ['price'] = 30000,
        ['category'] = 'industrial',
        ["categoryLabel"] = 'Industrial',
        ['hash'] = `tiptruck2`,
        ['shop'] = 'truck',
    },
}

CreateThread(function()
    while not ESX do Wait(250) end

    for k, v in pairs(Vehicles) do
        if v['tier'] and cars[v['tier']] then
            cars[v['tier']][#cars[v['tier']]+1] = k
        end
    end
end)

local currentRuns = {}
local ActivePlates = {} -- Handle all the active plates and syncs all the data shit
local currentContracts = {}
local LookingForContracts = {}




local function Notify(src, text, type, time)
    if Config.Boosting.Notifications == "phone" then
        TriggerClientEvent("qb-phone:client:CustomNotification", src,
            Lang:t('boosting.info.phonenotify'),
            text,
            "fas fa-user-secret",
            "#00008B",
            time
        )
    else
        TriggerClientEvent('QBCore:Notify', src, text, type, time)
    end
end





-- ** EVERYTHING TO DO WITH DROP OFFS AND VINSCRATCH ** --
local function ResetAnotherShit(Tier)
    SetTimeout(5 * 60000, function()
        Config.Boosting.ReturnLocation[Tier].isBusy = false
    end)
end

local function GetRandomDropOff()
    local Locations = {}
    for i = 1, #Config.Boosting.ReturnLocation do
        if not Config.Boosting.ReturnLocation[i].isBusy then
            Locations[#Locations+1] = i
        end
    end
    local location = Locations[math.random(1, #Locations)]
    return Config.Boosting.ReturnLocation[Locations[location]].coords, location
end

RegisterNetEvent('jl-laptop:server:FinalDestination', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Player = Player.PlayerData.citizenid
    if currentRuns[CID] and not currentRuns[CID].dropOff and currentRuns[CID].type == "boosting" then
        local place, id = GetRandomDropOff()

        TriggerClientEvent('jl-laptop:client:ReturnCar', src, place)
        ResetAnotherShit(id)
    elseif currentRuns[CID] and not currentRuns[CID].dropOff and currentRuns[CID].type == "vinscratch" then
        --NOT YET DONE
    end
end)












-- EVERYTHING TO DO WITH STARTING THE BOOST --

local function GeneratePlate() -- Just makes sure we generate plates noone owns.
    local plate = QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(2)
    local result = MySQL.Sync.fetchScalar('SELECT plate FROM player_vehicles WHERE plate = ?', {plate})
    if result or ActivePlates[plate] then
        return GeneratePlate()
    else
        return plate:upper()
    end
end

local function SpawnCar(src)
    local Player = QBCore.Functions.GetPlayer(src)
    local Player = Player.PlayerData.citizenid
    local carModel = currentRuns[CID].car:lower()
    local coords = currentRuns[CID].Location.carCoords

    local CreateAutomobile = joaat('CREATE_AUTOMOBILE')
    local car = Citizen.InvokeNative(CreateAutomobile, joaat(carModel), coords, true, false)

    local Checks = 0

    while not DoesEntityExist(car) do
        if Checks == 10 then break end -- Incase the above native dosnt work this will then reset the contracts
        Wait(25)
        Checks += 1
    end

    if DoesEntityExist(car) then
        SetVehicleDoorsLocked(car, 2)

        local plate = GeneratePlate()
        ActivePlates[plate] = math.random(3, 10)
        SetVehicleNumberPlateText(car, plate)
        currentRuns[CID].NetID = NetworkGetNetworkIdFromEntity(car)


        TriggerClientEvent('jl-laptop:client:SyncPlates', -1, ActivePlates)
        TriggerClientEvent('jl-laptop:client:MissionStarted', src, currentRuns[CID].NetID, coords, plate)

        return true
    else
        return false
    end
end

local function GerRandomLocation(Tier)
    local Locations = {}
    for i = 1, #Config.Boosting.Locations[Tier] do
        if not Config.Boosting.Locations[Tier][i].isBusy then
            Locations[#Locations+1] = i
        end
    end
    if Locations == 0 then return false, false end
    local location = Locations[math.random(1, #Locations)]
    Config.Boosting.Locations[Tier][location].isBusy = true
    return Config.Boosting.Locations[Tier][location], location
end

local function ResetShit(Tier, location)
    SetTimeout(5 * 60000, function()
        Config.Boosting.Locations[Tier][location].isBusy = false
    end)
end

ESX.RegisterServerCallback('jl-laptop:server:CanStartBoosting', function(source, cb, cops, id)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    if not Player then return cb("error") end
    if currentRuns[CID] then return cb("running") end
    if not currentContracts[CID][id] then return cb("notfound") end
    if Config.RenewedPhone and not exports['qb-phone']:hasEnough(src, "gne", currentContracts[CID][id].cost) then
        return cb("notenough")
    elseif Player.PlayerData.money.crypto < currentContracts[CID][id].cost then
        return cb("notenough")
    end
    local amount = 0
    if GlobalState.police == Config.Boosting.MinCops then
        amount = 1
    elseif cops > Config.Boosting.MinCops then
        amount = math.floor(cops / Config.Boosting.MinCops)
    end

    if amount < 1 or #currentRuns >= amount then return cb("cops") end

    local location, place = GerRandomLocation(currentContracts[CID][id].contract)
    if location then
        currentRuns[CID] = {
            Location = location,
            type = currentContracts[CID][id].type,
            car = currentContracts[CID][id].car,
            contract = currentContracts[CID][id].contract,
            cost = currentContracts[CID][id].cost,
            dropOff = nil,
            Plate = nil,
            NetID = nil,
            PedSpawned = false,
        }

        if SpawnCar(src) then

            if Config.RenewedPhone then
                exports['qb-phone']:RemoveCrypto(src, "gne", currentContracts[CID][id].cost)
            else
              	if not Player.Functions.RemoveMoney("crypto", currentContracts[CID][id].cost, Lang:t('boosting.info.bought_boost')) then
                    cb("busy")
                    return
                end
            end


            MaxPools[currentContracts[CID][id].contract] += 1
            ResetShit(currentContracts[CID][id].contract, place)
            table.remove(currentContracts[CID], id) -- has to be table.remove for some dumb ass reason
            TriggerClientEvent('jl-laptop:client:ContractHandler', src, currentContracts[CID])

            cb("success")
        else
            currentRuns[CID] = nil
        end
    else
        cb("busy")
    end

end)









-- EVERYTHING TO DO WITH PEDS SPAWNING --
local function DeletePeds(netIds)
    SetTimeout(2.5 * 60000, function()
        for i = 1, #netIds do
            if DoesEntityExist(NetworkGetEntityFromNetworkId(netIds[i])) then
                DeleteEntity(NetworkGetEntityFromNetworkId(netIds[i]))
            end
        end
    end)
end

RegisterNetEvent('jl-laptop:server:SpawnPed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Player = Player.PlayerData.citizenid
    if currentRuns[CID].PedSpawned then return end
    currentRuns[CID].PedSpawned = true
    local netIds = {}
    for k, v in pairs(currentRuns[CID].Location.peds) do
        local netId
        local pedstuff = CreatePed(30, joaat(v.model), v.coords, true, false)
        while not DoesEntityExist(pedstuff) do Wait(25) end
        netId = NetworkGetNetworkIdFromEntity(pedstuff)
        netIds[k] = netId
    end

    Wait(300)

    TriggerClientEvent('jl-laptop:client:SpawnPeds', src, netIds, currentRuns[CID].Location)
    DeletePeds(netIds)
end)










-- EVERYTHING TO DO WITH BLIPS SYNCING AND CAR HACKING --
RegisterNetEvent('jl-laptop:server:SyncBlips', function(coords, plate)
    if ActivePlates[plate] > 0 then
        TriggerClientEvent('jl-laptop:client:SyncBlips', -1, coords, plate)
    end
end)

-- ** Hacking Cars ** --
local Cooldowns = {}

local function removeCooldown(plate, time)
    SetTimeout(time * 1000, function()
        Cooldowns[plate] = false
    end)
end

RegisterNetEvent('jl-laptop:server:SyncPlates', function(success, time)
    local src = source

    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end
    if not Player.Functions.GetItemByName(Config.Boosting.HackingDevice) then return end


    local ped = GetPlayerPed(src)
    local plate = GetVehicleNumberPlateText(GetVehiclePedIsIn(ped, false))

    if Cooldowns and Cooldowns[plate] then return end

    Cooldowns[plate] = true

    if ActivePlates[plate] and ActivePlates[plate] >= 1 and success then
        if Config.Boosting.Debug then
            ActivePlates[plate] = 0
        else
            ActivePlates[plate] -= 1
        end
        TriggerClientEvent('jl-laptop:client:SyncPlates', -1, ActivePlates)
    end

    if not Config.Boosting.Debug then removeCooldown(plate, time) else Cooldowns[plate] = false end
end)

-- QBCore.Functions.CreateUseableItem(Config.Boosting.HackingDevice, function(source, item)
--     local Player = QBCore.Functions.GetPlayer(source)
--     if Player.Functions.GetItemByName(Config.Boosting.HackingDevice) then
--         TriggerClientEvent('jl-laptop:client:HackCar', source)
--     end
-- end)





----- ** EVERYTHING TO DO QUEUE ** -----

ESX.RegisterServerCallback('jl-laptop:server:joinQueue', function(source, cb, status)
    print(status)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    if not Player then return cb("error") end
    if not HasAppAccess(src, "boosting") then return cb("error") end
    local CID = ESX.GetIdentifier(source)
    print(CID)
    if status then
        if LookingForContracts[CID] and LookingForContracts[CID].active and LookingForContracts[CID].online and LookingForContracts[CID].src == src then return cb("inqueue") end
        if currentRuns[CID] then return cb("running") end
        if not LookingForContracts[CID] then LookingForContracts[CID] = {} end
        if not currentContracts[CID] then currentContracts[CID] = {} end
        if LookingForContracts[CID] and LookingForContracts[CID].skipped then
            LookingForContracts[CID] = {
                src = src,
                skipped = LookingForContracts[CID].skipped,
                online = true,
                active = true
            }
        else
            LookingForContracts[CID] = {
                src = src,
                online = true,
                skipped = 0,
                active = true
            }
        end
        cb("success")
    else
        if not LookingForContracts[CID] then return cb("error") end
        LookingForContracts[CID].active = false
        LookingForContracts[CID].online = true
        cb("success")
    end

    if LookingForContracts[CID].online then
        TriggerClientEvent('jl-laptop:client:QueueHandler', src, LookingForContracts[CID].active)
    end
end)


RegisterNetEvent('jl-laptop:server:QuitQueue', function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local Player = Player.PlayerData.citizenid
    if not LookingForContracts[CID] or not LookingForContracts[CID].skipped then return end
    LookingForContracts[CID].active = false

    if LookingForContracts[CID].online then
        TriggerClientEvent('jl-laptop:client:QueueHandler', src, LookingForContracts[CID].active)
    end
end)















-- ** EVERYTHING TO DO WITH REWARDS ** --

RegisterNetEvent('jl-laptop:server:finishBoost', function(netId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Player = Player.PlayerData.citizenid

    if not currentRuns[CID] then return end
    if not (currentRuns[CID].NetID == netId) then return end

    local boostData = Player.PlayerData.metadata["carboostrep"] or 0
    boostData += math.random(Config.Boosting.MetaReward[currentRuns[CID].contract].min , Config.Boosting.MetaReward[currentRuns[CID].contract].max)
    Player.Functions.SetMetaData('carboostrep', boostData)

    if currentRuns[CID].cost == 0 then
        currentRuns[CID].cost = math.random(1,2) -- makes it so they can actually get GNE when the boost is Free
    end

    local reward = math.ceil(currentRuns[CID].cost * math.random(2,3))
    if Config.RenewedPhone then
        exports['qb-phone']:AddCrypto(src, "gne", reward)
    else
        Player.Functions.AddMoney("crypto", reward, Lang:t('boosting.info.rewardboost'))
    end
    Notify(src, Lang:t('boosting.success.received_reward', {reward = reward}), "success", 7500)


    if DoesEntityExist(NetworkGetEntityFromNetworkId(currentRuns[CID].NetID)) then
        DeleteEntity(NetworkGetEntityFromNetworkId(currentRuns[CID].NetID))
    end
    currentRuns[CID] = nil
    TriggerClientEvent('jl-laptop:client:finishContract', src, currentContracts[CID])
end)







-- ** EVERYTHING TO DO WITH CANCELLING ** --
RegisterNetEvent('jl-laptop:server:CancelBoost', function(netId, Plate)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Player = Player.PlayerData.citizenid
    if not currentRuns[CID] then return end
    if not (currentRuns[CID].NetID == netId) then return end

    if DoesEntityExist(NetworkGetEntityFromNetworkId(currentRuns[CID].NetID)) then return end

    ActivePlates[Plate] = 0
    currentRuns[CID] = nil
    TriggerClientEvent('jl-laptop:client:SyncPlates', -1, ActivePlates)
    TriggerClientEvent('jl-laptop:client:finishContract', src, currentContracts[CID])

    Notify(src, Lang:t('boosting.error.cancelboost'), "error", 7500)
end)









-- ** CONTRACTS ** --
RegisterNetEvent('jl-laptop:server:DeclineBoost', function(contract)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local Player = Player.PlayerData.citizenid
    if not currentContracts[CID] then return end
    if not currentContracts[CID][contract] then return end

    MaxPools[currentContracts[CID][contract].contract] += 1
    table.remove(currentContracts[CID], contract)
end)
ESX.RegisterServerCallback('jl-laptop:server:DeclineContract', function(source, cb, contract)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return cb("error") end

    if not contract then return cb("error") end
    local Player = Player.PlayerData.citizenid
    if not currentContracts[CID] then return cb("error") end
    if not currentContracts[CID][contract] then return cb("error") end

    MaxPools[currentContracts[CID][contract].contract] += 1
    table.remove(currentContracts[CID], contract)

    TriggerClientEvent('jl-laptop:client:ContractHandler', src, currentContracts[CID])
    cb("success")
end)






-- ** TRANSFER BOOSTS ** --
ESX.RegisterServerCallback('jl-laptop:server:TransferContracts', function(source, cb, playerID, contractID)
    local src = source

    if src == tonumber(playerID) then return cb("self") end

    if not HasAppAccess(src, "boosting") then return cb("error") end

    if not playerID or not contractID then return cb("notfound") end

    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return cb("error") end

    local Player = Player.PlayerData.citizenid
    local Contract = currentContracts[CID][contractID]
    if not Contract then return cb("error") end

    local Reciever = QBCore.Functions.GetPlayer(tonumber(playerID))
    if not Reciever then return cb("notfound") end
    local RecievePlayer = Reciever.PlayerData.citizenid
    print(RecievePlayer, Reciever.PlayerData.source)
    if not currentContracts[RecievePlayer] then currentContracts[RecievePlayer] = {} end
    if #currentContracts[RecievePlayer]+1 > Config.Boosting.MaxBoosts then return cb("full") end

    -- refreshes the contracts for the source --
    table.remove(currentContracts[CID], contractID) -- has to be table.remove for some dumb ass reason
    TriggerClientEvent('jl-laptop:client:ContractHandler', src, currentContracts[CID])
    -- refreshes the contracts for the reciever --
    currentContracts[RecievePlayer][#currentContracts[RecievePlayer]+1] = Contract
    TriggerClientEvent('jl-laptop:client:ContractHandler', Reciever.PlayerData.source, currentContracts[RecievePlayer])
    cb("success")
end)







ESX.RegisterServerCallback('jl-laptop:server:GetContracts', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local Player = Player.PlayerData.citizenid
    if not currentContracts[CID] then currentContracts[CID] = {} end

    cb(currentContracts[CID], ActivePlates)
end)










-- ** EVERYTHING TO DO WITH GENERATING CONTRACTS ** --

local function generateTier(src)
    print('generating tier')
    local chance = math.random(1,100)
    local boostData = 300
    local tier

    -- We should also get their current metadata and based on their metadata increase this luck or even cap it so they cant get s+ if they just startedt/
    if chance >= 99 then -- 2%
        if boostData >= Config.Boosting.TiersPerRep["S"] then -- You can jump 1 tier above the current tier you are at so someone at D can't get a S+ Contract
            tier = "S+"
        else
            generateTier(src)
        end
    elseif chance >= 95 then -- 3%
        if boostData >= Config.Boosting.TiersPerRep["A+"] then -- You can jump 1 tier above the current tier you are at so someone at D can't get a S+ Contract
            tier = "S"
        else
            generateTier(src)
        end

    elseif chance >= 90 then -- 5%
        if boostData >= Config.Boosting.TiersPerRep["A"] then -- You can jump 1 tier above the current tier you are at so someone at D can't get a S+ Contract
            tier = "A+"
        else
            generateTier(src)
        end

    elseif chance >= 80 then -- 10%
        if boostData >= Config.Boosting.TiersPerRep["B"] then -- You can jump 1 tier above the current tier you are at so someone at D can't get a S+ Contract
            tier = "A"
        else
            generateTier(src)
        end

    elseif chance >= 60 then -- 20%
        if boostData >= Config.Boosting.TiersPerRep["C"] then -- You can jump 1 tier above the current tier you are at so someone at D can't get a S+ Contract
            tier = "B"
        else
            generateTier(src)
        end
    elseif chance >= 35 then -- 25%
        if boostData >= Config.Boosting.TiersPerRep["D"] then -- You can jump 1 tier above the current tier you are at so someone at D can't get a S+ Contract
            tier = "C"
        else
            generateTier(src)
        end
    else
        tier = "D"
    end

    Wait(0)

    if not tier then return generateTier(src) end

    if MaxPools[tier] and MaxPools[tier] > 0 then
        MaxPools[tier] -= 1
        return tier
    else
        return nil
    end
end

local function generateCar(tier)
    if not cars[tier] or (cars[tier] and #cars[tier] < 1) then return nil end
    return cars[tier][math.random(1, #cars[tier])]
end

local function missionType(Player, tier)
    local boostData = 300

    if not boostData then return end

    if tier == "D" or tier == "C" or tier == "B" or tier == "A" then return "boosting" end -- Only A+, S and S+ Can be vinscratched

    if boostData >= Config.Boosting.TiersPerRep[tier] then
        if math.random() <= 0.05 then
            return "vinscratch"
        end
    else
        return "boosting"
    end
end

function GetHoursFromNow(hours)
    if Config.Linux then
        return os.date("!%Y-%m-%dT%TZ", os.time() + hours * 60 * 60)
    else
        return os.date("!%Y-%m-%dT%SZ", os.time() + hours * 60 * 60)
    end
end

function GetCurrentTime()
    if Config.Linux then
        return os.date("!%Y-%m-%dT%TZ", os.time())
    else
        return os.date("!%Y-%m-%dT%SZ", os.time())
    end

end
ESX.RegisterServerCallback("jl-laptop:server:getCurrentTime", function (cb)
    cb({
        GetCurrentTime()
    })
end)

local function generateName()
    return Config.Boosting.RandomNames[math.random(1, #Config.Boosting.RandomNames)]
end

local function calcPrice(tier, type)
    if not tier or not type then return end
    local price = math.random(Config.Boosting.Price[tier].min, Config.Boosting.Price[tier].max)
    if type == "boosting" then price = price else price = price * math.random(2,5) end
    return Config.Boosting.Debug and 0 or price
end

local function generateContract(src, contract, vehicle, mission)
    local Player = ESX.GetPlayerFromId(src)
    local CID = ESX.GetIdentifier(src)
    if not Player then return end
    if not currentContracts[CID] then currentContracts[CID] = {} end

    contract = contract or generateTier(src)
    vehicle = vehicle or generateCar(contract)
    mission = mission or missionType(Player, contract)

    if contract and vehicle and mission then
        currentContracts[CID][#currentContracts[CID]+1] = {
            id = #currentContracts[CID]+1,
            contract = contract,
            car = vehicle,
            carName = Vehicles[vehicle]["name"],
            expire = GetHoursFromNow(6),
            owner = generateName(),
            type = mission,
            cost = calcPrice(contract, mission),
        }
        LookingForContracts[CID].skipped = 0
        TriggerClientEvent('jl-laptop:client:ContractHandler', src, currentContracts[CID], GetCurrentTime())
    else
        LookingForContracts[CID].skipped += 1
    end
end

-- QUEUE LOOP --
CreateThread(function()
    while true do
        if LookingForContracts then
            for k, v in pairs(LookingForContracts) do
                if currentContracts[k] then
                    if #currentContracts[k] < Config.Boosting.MaxBoosts and v.active and v.online then
                        local ContractChance = math.random()
                        print(v.skipped)
                        -- If skipped is bigger or equal to 25 we give player a contract for waiting
                        -- Otherwise we say if they been in queue longer than 2-7 skips and their chance is higher than 0.75 (meaning 25% chance) we will reward them with a contract
                        if v.skipped >= 25 or (v.skipped >= math.random(2, 7) and ContractChance >= 0.75) then
                            generateContract(v.src)
                        else
                            v.skipped += 1
                        end
                    elseif #currentContracts[k] >= Config.Boosting.MaxBoosts then
                        v.active = false
                        if v.online then
                            TriggerClientEvent('jl-laptop:client:QueueHandler', v.src, false)
                        end
                    end
                elseif not currentContracts[k] then
                    currentContracts[k] = {}
                end
            end
        end
        Wait(Config.Boosting.Debug and 200 or (math.random(1, 4) * 60000 )) -- Once every 1 to 4 minutes
        Wait(0)
    end
end)


-- Player dropped functions --
local function GetCID(src)
    if LookingForContracts then
        for k, v in pairs(LookingForContracts) do
            if v.src == src then
                return k
            end
        end
    end
end

AddEventHandler('playerDropped', function()
	local src = source
    local Player = GetCID(src)
    if not Player then return end
    LookingForContracts[CID].active = false
    LookingForContracts[CID].online = false

    if currentRuns[CID] then
        currentRuns[CID] = nil
    end
end)

-- -- Commands --
-- QBCore.Commands.Add('giveboost', Lang:t('boosting.command.command_desc'), {{ name = Lang:t('boosting.command.command_name_ID'), help = Lang:t('boosting.command.command_help_ID')}, { name = Lang:t('boosting.command.command_name_tier'), help = Lang:t('boosting.command.command_help_tier')}, { name = Lang:t('boosting.command.command_name_vehicle'), help = Lang:t('boosting.command.command_help_vehicle')}, { name = 'Type', help = 'boosting/vinscratch'}, }, false, function(source, args)
--     if args and type(tonumber(args[1])) == "number" then
--         local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
--         if Player then
--             local Player = Player.PlayerData.citizenid
--             if LookingForContracts[CID] then
--                 if args[4] and not (args[4] == 'boosting' or args[4] == 'vinscratch') then
--                     TriggerClientEvent('QBCore:Notify', source, Lang:t('boosting.command.incorrect_type'), 'error', 7500)
--                 elseif args[3] and not type(args[3]) == "string" then
--                     TriggerClientEvent('QBCore:Notify', source, Lang:t('boosting.command.incorrect_vehicle'), 'error', 7500)
--                 elseif args[2] and not (args[2] == "D" or args[2] == "C" or args[2] == "B" or args[2] == "A" or args[2] == "A+" or args[2] == "S" or args[2] == "S+") then
--                     TriggerClientEvent('QBCore:Notify', source, Lang:t('boosting.command.incorrect_tier'), 'error', 7500)
--                 else
--                     generateContract(tonumber(args[1]), args[2], args[3], args[4])
--                     TriggerClientEvent('QBCore:Notify', source, Lang:t('boosting.command.created'), 'success', 7500)
--                 end
--             else
--                 TriggerClientEvent('QBCore:Notify', source, Lang:t('boosting.command.not_inqueue'), 'error', 5000)
--             end
--         else
--             TriggerClientEvent('QBCore:Notify', source, Lang:t('boosting.command.player_offline'), 'error', 5000)
--         end
--     else
--         TriggerClientEvent('QBCore:Notify', source, Lang:t('boosting.command.incorrect_format'), "error", 5000)
--     end
-- end, "god")

-- QBCore.Commands.Add('settier', Lang:t('boosting.command.command_tier_desc'), {{ name = Lang:t('boosting.command.command_name_ID'), help = Lang:t('boosting.command.command_help_ID')}, { name = Lang:t('boosting.command.command_name_tier'), help = Lang:t('boosting.command.command_help_tier')} }, false, function(source, args)
--     if args and type(tonumber(args[1])) == "number" then
--          if args[2] and type(args[2]) == "string" then
--             local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
--             if Player then
--                 local rep = Player.PlayerData.metadata["carboostrep"] or 0
--                 rep = Config.Boosting.TiersPerRep[args[2]]
--                 Player.Functions.SetMetaData('carboostrep', rep)
--             else
--                 TriggerClientEvent('QBCore:Notify', source, Lang:t('boosting.command.player_offline'), 'error', 5000)
--             end
--         else
--             TriggerClientEvent('QBCore:Notify', source, Lang:t('boosting.command.missingarg'), "error", 5000)
--         end
--     else
--         TriggerClientEvent('QBCore:Notify', source, Lang:t('boosting.command.incorrect_format'), "error", 5000)
--     end
-- end, "god")
