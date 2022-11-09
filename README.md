# gdn-thegalleryjob




* Requirement *
qb-menu
qb-core
qb-inventory
ps-buffs

* What comes with the script *
with in this script u will get Np like edited qb-menu , the MLO of the Art Gallery and all
of the Gem's pictures. All the Goldchains and watches and Gems are configable within the config. Then Menu
will be avaible incase you wanna change the images in the menu but server side and client side will
be encryted

* Insert these in the qbcore/shared/items *
--- gallery Gems
['r'] 					 = {['name'] = 'R', 					['label'] = 'Ruby', 			    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'r_ruby.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Shiny Gem! maybe gallery like this.'},
['s'] 		 	         = {['name'] = 'S', 				    ['label'] = 'Sapphire', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 's_sapphire.png', 	    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Shiny Gem! maybe gallery like this'},
['pd'] 					 = {['name'] = 'PD', 					['label'] = 'Pink Diamond', 		['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pd_pink_diamond.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Shiny Gem! maybe gallery like this'},
['o'] 					 = {['name'] = 'O', 					['label'] = 'Opal', 			    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'o_opal', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Shiny Gem! maybe gallery like this'},
['e'] 		 	         = {['name'] = 'E', 				    ['label'] = 'Emerald', 			    ['weight'] = 350, 		['type'] = 'item', 		['image'] = 'e_emerald.png', 	    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Shiny Gem! maybe gallery like this'},
['d'] 		             = {['name'] = 'D', 			        ['label'] = 'Diamond', 			    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'd_diamond.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Shiny Gem! maybe gallery like this'},
['bd'] 		 	         = {['name'] = 'BD', 				    ['label'] = 'Black Diamond', 		['weight'] = 350, 		['type'] = 'item', 		['image'] = 'bd_black_diamonds.png',['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Shiny Gem! maybe gallery like this'},




** Jobs for QBCore/shared/Jobs

['gallery'] = {
    label = 'Illegal Job',
    defaultDuty = true,
    offDutyPay = true,
    grades = {
        ['0'] = {
            name = 'Recruit',
            payment = 200
        },
        ['1'] = {
            name = 'Novice',
            payment = 250
        },
        ['2'] = {
            name = 'Experienced',
            payment = 275
        },
        ['3'] = {
            name = 'Advanced',
            payment = 300
        },
        ['4'] = {
            name = 'owner',
            isboss = true,
            payment = 400
        },
    },
},
