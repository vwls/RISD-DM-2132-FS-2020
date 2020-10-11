(* 
Story Generator v1, 
Sept. 15, 2020,
Travess Smalley

To do:
	In v2 take out grammar. That can be part of the variables.
	In v2, re think structure. Does it always have to start with location?
	In v2, seperate out description of the inhabitants and descriptions of the place.
	Make an artwork generator script
	Each landmark can have it's subsection of the types of events that happen there.
	Return variables to landscape and landscapeChoice because it gives me more options.
	Talking to inhabitants can do things.
	Possibility for their to be no landmark or inhabitants but it still makes grammatical sense
	Even the first section of the sentence "you start in" could be reworded programmed to respond to variables.  
	Could be something like "you're submerged - floating - awoken from sleep"
	In a desert dune vs. on a desert dune. needs to be fixed grammatically
*)

repeat 30 times
	# Intro phrase
	# the word in might also be at, on, floating above, digging into
	
	set introPhrase to some item of {"You begin in ", "The story begins in ", "You materialize suddenly in ", "You start in ", "You awake in "}
	
	# list of landscape possibilities, pull from video games
	
	set lsChoice to my (random number from 1 to 4)
	if lsChoice < 2 then
		set landscapeAdj to {"pink ", "purple ", "blue ", "green ", "vermillion ", "golden ", "smokey ", "humid ", "turquoise ", "misty ", "clear ", "pale ", "gray ", "hazy "}
	else
		set landscapeAdj to {""}
	end if
	set landscape to {"wildflower field", "bog forest", "lightly wooded forest", "pine forest", "craggy beach", "marsh", "mountain", "dense forest", "coral reef", "dark pond", "underwater garden", "empty body of water", "empty tundra", "glacial tundra", "snow dune tundra", "ice sheet tundra", "desert oasis", "dune desert", "desert garden", "desert brush", "desert valley", "ocean", "apple orchard", "low valley", "valley", "bog"}
	set landscapeSelection to some item of landscape
	set landscapeChoice to some item of landscapeAdj & landscapeSelection
	# list of directions
	set ddChoice to my (random number from 1 to 4)
	if ddChoice < 4 then
		set directionDescriptor to {"many leagues ", "across the bridge to the ", "over the mountains to the ", "a little ways ", "a fields length ", "", "", ""}
	else
		set directionDescriptor to {""}
	end if
	set direction to {"north of ", "north-east of ", "east of ", "south-east of ", "south of ", "south-west of ", "west of ", "north-west of "}
	set directionChoice to some item of directionDescriptor & some item of direction
	
	set landmark to some item of {"labyrinth", "sundial", "sculpture", "temple", "granary", "library", "castle", "greenhouse", "farmhouse", "graveyard", "mineshaft", "dungeon", "beast husk", "boulder", "cathedral", "fortress", "fossilized whale skeleton", "tower"}
	set inhabitantFreq to some item of {" inhabited by ", " often visted by ", " worshipped by ", " feared by the ", " settled by ", " revered by ", " guarded by "}
	
	set inhabitantAdjWeight to my (random number from 1 to 3)
	if inhabitantAdjWeight < 3 then
		set inhabitantAdj to some item of {"shambling ", "portly ", "timid ", "a gathering of ", "marble ", "gluttonous ", "bellicose ", "illusive ", "covetous ", "noble ", "pious ", "golden ", "spirited ", "magical ", "invisible ", "wicked ", "baleful ", "disgruntled ", "cheerful ", "devious ", "hoary ", "a guild of "}
	else
		set inhabitantAdj to some item of {""}
	end if
	set inhabitantType to {"frogs", "hobgoblins", "elves", "gremlins", "ogres", "dwarves", "goblins", "gnomes", "spriggans", "crow-people", "swampthings", "necromancers", "woodwoses", "cat riders", "changelings", "skeletons", "scholars", "artisans", "furniture makers", "architects", "troubadours", "shepherds", "pixies", "treasure hunters", "priests", "crab-people", "bluecaps", "sailors", "fairy queens", "ghosts", "wereboars", "mammoth snails", "werecats", "weavers", "bronzesmiths", "bellmakers", "spoon whittlers", "toy makers", "herbalists", "cave bears", "trolls", "frost trolls"}
	set inhabitantTypeSelection to some item of inhabitantType
	set inhabitant to inhabitantAdj & inhabitantTypeSelection
	
	
	
	if inhabitantTypeSelection is in {"artisans", "furniture makers", "architects", "weavers", "bronzesmiths", "bellmakers", "spoon whittlers", "toy makers"} then
		set materialObj to some item of {"instructions", "found plantmatter", "old bones", "dried clay", "clay", "found stone", "stone", "soft wood", "wet clay", "hay", "stolen treasures", "valuable jewels", "heirlooms"}
		set toolObj to some item of {"chisels", "brushes", "shells", "picks", "combs", "sharp blades", "their mouths"}
		set inhabitantStatement to some item of {"", (" whose crafts are made from " & materialObj & " and " & toolObj)}
	else if inhabitantTypeSelection is in {"scholars", "priests", "herbalists"} then
		set studies to some item of {"scripture", "weaving techniques", "building techniques", "magic", "alchemy", "tarot", "astrology", "games", "landscaping styles", "lore", "measurements"}
		set studiesType to some item of {"studied", "memorized", "investigated", "examined", "analyzed", "scrutinized", "attempted to interpret"}
		set studiesThoughts to some item of {" but do not understand it's meaning", " and continually recite their teachings", " and argue continuously about its uses", " in hopes of self-defense"}
		set inhabitantStatement to {"", (" who've " & studiesType & " " & studies & studiesThoughts)}
	else
		set inhabitantStatement to {""}
	end if
	
	if character 1 of landscapeChoice is in {"a", "e", "i", "o", "u"} then
		set grammar1 to {"an"}
	else
		set grammar1 to {"a"}
	end if
	
	if character 1 of landmark is in {"a", "e", "i", "o", "u"} then
		set grammar2 to {"an"}
	else
		set grammar2 to {"a"}
	end if
	
	set entranceAdjObj to {"", "", "", "", "muddy", "scratched", "wet", "slime-covered"}
	set entranceObj to {"tree trunks", "casted metal", "carved marble", "bones", "rotten wood", "stones", "shells"}
	set entranceObjChoice to some item of entranceAdjObj & " " & some item of entranceObj
	set blockage to some item of {"covered in rocks.", "boarded up.", ("framed in " & entranceObjChoice & "."), "filled with debris.", "glowing brightly.", "surrounded by dried weeds.", "slimey.", "made of " & entranceObjChoice & "."}
	# filled with potted plants, potted cactus, potted flowers, potted fake flowers fashioned out of bones, dust, rubble, coral, rope
	set creature to some item of {"giants", "wanderers", "small children", "the deceased", inhabitantTypeSelection, ("devout followers of the " & (some item of inhabitantType) & "'s god")}
	set writingSource to some item of {"walls.", "tiles.", "ancient scriptures."}
	set ease to some item of {"easy.", "navigable.", "difficult.", "torturous.", "impossible.", "filled with traps.", ("written in the " & writingSource), ("only possible for " & creature & "."), ("guarded by " & (some item of inhabitantType) & ".")}
	set horrifiedVar to some item of {creature, (some item of inhabitantType)}
	set lostQuality to some item of {"lost", "hidden", "burried", "entombed", "invisible", "sleepwalking"}
	set lostObj to some item of {"enemies.", "loved ones.", "oracles.", "healers.", "ancestors.", "hermits.", "animals.", (some item of inhabitantType) & "."}
	set valuableAdj to some item of {"valuable", "rare", "illusive", "common", "discarded", "desired"}
	set valuableObj to some item of {"ores.", "minerals.", "maps.", "herbs.", "butterflies.", "vessels.", "instruments.", "artifacts.", "secrets.", "information.", "feathers.", "ingredients."}
	set quest to some item of {(lostQuality & " " & lostObj), "treasure.", valuableAdj & " " & valuableObj}
	set storyAdj to some item of {"horrific", "bone-chilling", "wicked", "scary"}
	set storyObj to some item of {" stories", " songs", " tales", " hymns", " rumors"}
	set wayThroughLandmark to some item of {" seems ", " appears ", " looks ", " most certainly is "}
	set searchSyn to some item of {"searching", "looking", "hunting", "exploring", "scouting", "pursuing"}
	set waySyn to some item of {"way", "path", "journey", "hike", "trip"}
	set throughSyn to some item of {"through", "into", "around"}
	
	if landmark is in {"labyrinth", "dungeon", "mineshaft", "graveyard", "fortress"} then
		set wayThrough to some item of {(" The " & waySyn & " " & throughSyn & " the " & landmark & wayThroughLandmark & ease), (" The entrance is " & blockage), (" You have heard " & storyAdj & storyObj & " about the " & horrifiedVar & " who've entered."), " They are " & searchSyn & " for " & quest}
	else
		set wayThrough to {}
	end if
	
	if landscapeSelection is in {"craggy beach"} then
		set hearSyn to some item of {"hear", "catch sight of", "see", "listen to"}
		set birdSyn to some item of {"gulls", "seabirds", "birds", "fish mutants", "mudlings", "wild hounds", "scavengers", "seagulls", "giant hawklings"}
		set crackingSyn to some item of {"cracking", "breaking", "dropping"}
		set rockSyn to some item of {"rocks", "boulders", "boat wreckage", "docks"}
		set shellSyn to some item of {"shells", "mollusks", "crabs", "crustacians", "clams", "barnacles", "lobster shells", "sea snails", "fish bones", "oysters"}
		set beachMoment to " You " & hearSyn & " " & birdSyn & " " & crackingSyn & " " & shellSyn & " on the " & rockSyn & "."
	else
		set beachMoment to ""
	end if
	
	
	# if landmark is {"library", "castle", "farmhouse", "tower"} then you find a book, you find a painting, you find a sculpture, meet a variable creature,
	# book, painting, sculpture can all be defined with multiple variables
	
	#you talk to the inhabitant and they tell you... - this can loop into a new story
	# you find a book in the library and... -- can loop into a new story
	
	
	display dialog introPhrase & grammar1 & " " & landscapeChoice & " " & directionChoice & grammar2 & " " & landmark & inhabitantFreq & inhabitant & inhabitantStatement & "." & wayThrough & beachMoment
	# display dialog "You start in " & grammar1 & " " & landscape & ". To the " & direction & " you see " & grammar2 & " " & landmark & " inhabited by " & inhabitant & "." & wayThrough
	
end repeat
