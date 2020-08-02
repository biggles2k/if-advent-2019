"Advent-2019" by "Michael D. Hilborn"

[
 Started: Mon, Nov 11, 2019 with Inform Build 6M62.
]

Part 1 - For Release

Chapter 1 - Includes

Chapter 2 - Meta Information

The story headline is an "An Interactive Advent Calendar". The story genre is "Fantasy". The story description is "My entry for the 2019 Advent Calendar." The story creation year is 2019.

Part 2 - Things and Actions

Chapter 1 - New Values and Definitions

An element is a kind of value. The elements are earth, air, fire, water, magma, ooze, smoke, ice, and element-less.

The plane of existence is an element that varies. The plane of existence is fire.

Definition: A direction is compass if it is north or it is south or it is east or it is west or it is northeast or it is northwest or it is southeast or it is southwest.

Chapter 2 - New Stuff

Section 1 - Elemental Containers

An elemental container is a kind of thing. An elemental container has an element. The element of an elemental container is usually element-less. Understand the element property as describing an elemental container. Understand "empty" as an element-less elemental container. Understand "essence" as an imbued elemental container.

Definition: An elemental container is imbued if it is not element-less.

Before printing the name of a element-less elemental container:
	say "empty ";

After printing the name of an imbued elemental container:
	say " with an essence of [element]".

Before printing the plural name of a element-less elemental container:
	say "empty ";
	
Rule for printing the plural name of an imbued elemental container when listing contents:
	say "[element]";

To say print (stuff - an element):
		choose row with element of the stuff from Table of Elemental Descriptions;
	say display entry;

Table of Elemental Descriptions
Element	Display
earth	"a quantity of earth"
water	"a crystal-clear volume of water"
air	"a vortex of air swirling against the glass"
fire	"flames brushing up against the glass"
ooze	"a viscous, slimy substance oozing against the glass"
ice	"a crystalline lattice of ice"
magma	"a mixture of molten hot rock"
smoke	"clouds of filthy smoke"

A canister is a kind of elemental container. The description of a canister is "A narrow tube of glass about the length of your forearm, capped on one end by a copper lid[if not element-less]. It contains [print element][end if]." Understand "canister of", "copper", "lid" as a canister.

Section 2 - Directional Containers
	
A directional container is a kind of container. A directional container has a direction. A directional container has an element.  A directional container has some text called the abbreviation. Understand the abbreviation property as describing a directional container.

Chapter 3 - New Relationships

Attachment relates things to each other. 

The verb to be connected to means the attachment relation.

Chapter 4 - New Verbs

Detaching it from is an action applying to two touchable things and requiring light.

Understand "detach [something] from [something]" as detaching it from. Understand "remove [something] from [something]" as detaching it from.

Carry out detaching it from (this is the block detaching rule):
	say "You can't detach that."

Part 3 - The World Model

Chapter 1 - Background

Background is a backdrop. Background is everywhere. Understand "room" or "walls" or "floor" as the background.

Instead of examining background:
	try looking;

Chapter 2 - The Foyer

Section 1 - The Foyer Itself

The Foyer is a room. "A vaulted hallway of great antiquity leads north into a domed chamber. A pair of intimidating oak doors[first time] (didn't you enter a single door?)[only] is to the south. Next to the doors is a hole." Understand "hallway", "vaulted hallway" as the background when the location is the Foyer.

The vaulted ceiling is scenery in the Foyer. "The ceiling rests far above you, the frescoes nestled between its vaulted ribs dimly lit by. . . you do not know. They are simply. . . dimly lit."

The frescoes are scenery in the Foyer. "The frescoes, each sequestered between a pair of vaulted ribs, are too dimly lit to distinguish from down here." Understand "paintings" as the frescoes.

The vaulted ribs are scenery in the Foyer. "Pairs of stone ribs arc up along the walls and hold up the ceiling." Understand "pillars", "walls" as the vaulted ribs. 

The domed chamber from afar is scenery in the Foyer. "It's a large, circular chamber with a curved ceiling; you can tell that much from here. A pedestal sits in its center." Understand "pedestal" as the domed chamber from afar.

Instead of going south from the Foyer:
	try entering the intimidating oak doors;
	
Section 2 - The Hole

The hole is scenery in the Foyer. "A small, threaded hole has been carved into the wall next to the doors[if the hose is connected to the hole]. A hose is attached to the hole[otherwise]. You can feel a rush of air coming out of it[end if]." Understand "wall" as the hole.
		
Instead of searching the hole:
	if the hose is connected to the hole:
		say "You would have to detach the hose first.";
	otherwise:
		say "You don't see anything through the hole, though a steady flow of air rushes out of it.";
	
Instead of tying the hose to the hole:
	if the hose is connected to the hole:
		say "The hose is already connected to the hole.";
	otherwise:
		now the hose is connected to the hole;
		say "When you thread the hose into the hole, the hose inflates with air[if the player is wearing the rubber suit] and a soft breeze enters the helmet of your suit[end if].";

Instead of tying the hole to the hose:
		try tying the hose to the hole; 

Instead of going somewhere when the location is the Foyer and the hose is connected to the hole:
	if the player encloses the hose or the player encloses something connected to the hose:
		if the player is wearing the rubber suit:
			say "Before doing so, you remove the rubber suit and leave it behind.";
			move the rubber suit to the Foyer;
			move the hose to the Foyer;
			continue the action;
		otherwise:
			say "You're not going anywhere with the hose attached to the wall.";
	otherwise:
		continue the action;

Instead of detaching the hose from the hole:
	if the hose is not connected to the hole:
		say "The hose is not connected to the hole." instead;
	otherwise:
		say "You detach the hose from the hole. The hose deflates[if the player is wearing the rubber suit]and the gentle breeze within the suit's helmet dies out[end if].";
		now the hose is not connected to the hole;
		rule succeeds;
		
Instead of detaching the hole from the hose:
	try detaching the hose from the hole;

Chapter 3 - The Dome

Section 1 - Inside the Dome

The Dome is north of the Foyer. "You stand in an immense chamber, its ceiling a massive dome of fluted glass. South lies the foyer while hallways lead off in the northerly directions. In the center of the chamber stands a pedestal, and at the southern base of the pedestal, sunk into the perforated steel floor, is a hatch.[paragraph break]Through the dome you see [through the dome]." Understand "dome" as the background when the location is the Dome.

Outside the dome is scenery in the Dome. The description of outside the dome is "Through the dome you see [through the dome]."

Understand "forest", "stalactites", "cavern" as outside the dome when the plane of existence is earth.

Understand "water", "ocean", "sea" as outside the dome when the plane of existence is water.

Understand "sky", "air" as outside the dome when the plane of existence is air.

Understand "flames", "fire", "inferno" as outside the dome when the plane of existence is fire.

Understand "ooze", "substance", "gelatinous substance" as outside the dome when the plane of existence is ooze.

Understand "icicles", "cavern", "ice" as outside the dome when the plane of existence is ice.

Understand "clouds", "smoke" as outside the dome when the plane of existence is smoke.

Understand "magma", "molten rock", "rock", "lava" as outside the dome when the plane of existence is magma.

To say through the dome:
	choose row with element of the plane of existence from Table of Dome Scenery;
	say "[description entry]";
	
Does the player mean examining outside the dome: it is very likely.
	
Table of Dome Scenery
element	description
earth	"a forest of stalactites hanging from the ceiling of an enormous cavern"
water	"water rising endlessly above the glass, as if this place is submerged in the depths of an ocean"
air	"a crystal-clear, blue sky"
fire	"enormous flames brush against the glass as if the chamber sits in the maw of an endless inferno"
ooze	"a gelatinous substance coating the glass"
ice	"a forest of icicles hanging from the ceiling of an enormous cavern of ice"
smoke	"thick roiling clouds of smoke"
magma	"thick rivulets of molten rock pouring over the glass as if this place rests in the active cauldron of a volcano"
	
Section 2 - The Pedestal and Its Buttons

The pedestal is scenery in the Dome. "A round pedestal about as tall as your waistline. Eight buttons rim the circumference, with each button located in a different compass direction." 

Report examining the pedestal:
	let niche-directions be a list of directions;
	let the blinking direction be a direction;
	repeat with niche running through slots:
		if the niche contains a canister:
			add the direction of the niche to niche-directions;
			if the element of the niche is the plane of existence:
				now the blinking direction is the direction of the niche;
	say "The buttons to the [niche-directions] are glowing. The button to [the blinking direction] is also blinking.";
	
A navigation button is a kind of thing. The description of a navigation button is "A large button, about the size of your palm[glowing algorithm for the direction]." A navigation button has a direction.  A navigation button has some text called the abbreviation. Understand the abbreviation property as describing a navigation button.

To say glowing algorithm for (the way -  a direction):
	choose the row with direction of the way from the Table of Column Slots;
	let the niche be the slot entry;
	let the selected element be the element entry;
	if the niche is energized:
		say ". The button is [if the plane of existence is the selected element]blinking[otherwise]glowing[end if]";
	
Some navigation buttons are defined by the Table of Pedestal Buttons.

Table of Pedestal Buttons
navigation button	direction	abbreviation
the north button	north	"n"
the northeast button	northeast	"ne"
the east button	east	"e"
the southeast button	southeast	"se"
the south button	south	"s"
the southwest button	southwest	"sw"
the west button	west	"w"
the northwest button	northwest	"nw"

When play begins:
	repeat through Table of Pedestal Buttons:
		now the navigation button entry is part of the pedestal; 
		
Instead of pushing a navigation button (called the pushy thing):
	let the way be the direction of the pushy thing;
	let the niche be the slot corresponding to a direction of the way in the Table of Column Slots;
	if the niche is energized and the element of the niche is not the plane of existence:
		now the plane of existence is the element of the niche;
		choose row with an element of the element of the niche in the Table of the Planes;
		now the room entry is mapped south of the Foyer;
		say "When you push the button, a roar of machinery emanates from below, vibrating the floor. The whole chamber seems to tilt one way, then the other, then again, forcing you to grasp the pedestal to steady yourself. After a moment, the shaking and noise subsides. Everything returns to normal except now, through the dome, you see [through the dome].";
	otherwise:
		say "Nothing seems to happen.";

Section 3 - A Simple Hatch

The  hatch is down from the Dome and up from the Mechanical Room. The hatch is a door. The hatch is closed. The hatch is scenery. The description of the hatch is "A steel hatch, currently [if open]open[otherwise]closed[end if]."

Report opening the hatch when the location is the Dome:
	say "The hatch creaks open, revealing a way down." instead.
	
Chapter 4 - The Mechanical Room

Section 1 - The Room Itself

The description of the Mechanical Room is "You are in a large chamber well beneath the dome, surrounded on all sides by an assortment of churning machinery. Dominating the center of the room is a large, metal column. Next to the column, a ladder leads up to a hatch in the perforated ceiling."

The ladder is scenery in the Mechanical Room. "A narrow steel ladder, leading up to [if the hatch is open]an open[otherwise]a closed[end if] hatch."

The machinery is scenery in the Mechanical Room. "A noisy, oversized, mechanical potpourri consisting of gears, pumps, and an endless number of wires and hoses connecting everything." Understand "gears", "pumps", "wires", "hoses" as the machinery.

Instead of listening when the location is the Mechanical Room:
	say  "The mechanical cacophony is deafening."
	
Four element-less canisters are in the Mechanical Room.

Section 2 - The Column and Its Slots

The column is scenery in the Mechanical Room. "The column stretches from floor to ceiling and has eight sides to it, each facing a different compass direction. A narrow slot, about a forearm in height, has been chiseled into each side of the column."

Report examining the column:
	let niche-directions be a list of directions;
	repeat with niche running through slots:
		if the niche contains a canister:
			add the direction of the niche to niche-directions;
	say "You see a canister in each of the [niche-directions] slots.";
		
A slot is a kind of directional container. The description of a slot is "The slot is at the bottom of a glass conduit of wires that crawls up the [the direction] side of the column and disappears into the ceiling." Understand "conduit", "conduit of wires", "wires" as a slot.

Some slots are defined by the Table of Column Slots.

Table of Column Slots
slot	element	direction	abbreviation
the north slot	earth	north	"n"
the northeast slot	ooze	northeast	"ne"
the east slot	water	east	"e"
the southeast slot	ice	southeast	"se"
the south slot	air	south	"s"
the southwest slot	smoke	southwest	"sw"
the west slot	fire	west	"w"
the northwest slot	magma	northwest	"nw"

Definition: A slot is energized if it contains a canister.

When play begins:
	repeat through Table of Column Slots:
		now the slot entry is part of the column; 
		
One earth canister is in the north slot.
One water canister is in the east slot.
One air canister is in the south slot.
One fire canister is in the west slot.

Instead of taking or opening a canister when the noun is in a slot:
	say "[The noun] seems to be latched in place."

Instead of inserting a canister into an energized slot:
	say "There is already a canister in the slot!";
	
Instead of inserting a canister into a slot:
	say "[The noun] readily slips into the slot";
	if the element of the noun is the element of the second noun:
		say " and is latched into place. The canister briefly glows and the wires above the slot crackle with energy. The mechanical din of the room briefly increases before everything subsides to normal.";
		now the noun is in the second noun;
	otherwise:
		say ", but nothing seems to happen. After a moment, you remove [the noun] from the slot.";
		
Report examining a canister when the noun is in a slot (called the niche):
	say "The canister has been latched into [the niche]."

Chapter 5 - The Laboratory

Section 1 - The Lab Itself

The Laboratory is northwest of the Dome. "A webwork of glassware, tubes, burners, wires, benches, monitors and other equipment encompasses this immense laboratory. It's difficult to move without disturbing or even breaking something, and occasionally you need to duck under a stray wire or tube. An exit from this delicate web of instrumentation is to the southeast." Understand "laboratory" or "lab" as the background when the location is the Laboratory.

The laboratory equipment is scenery in the Laboratory. "A cornucopia of laboratory equipment seemingly jumbled together at random, but it must make sense to somebody... maybe." Understand "glassware", "tubes", "burners", "wires", "benches", "bench", "monitors" as the laboratory equipment.

Two element-less canisters are in the Laboratory.

Section 2 - The Odd Contraption

The odd contraption is in the Laboratory. "Secluded on a bench in a corner, yet somehow standing out among all of the other equipment, rests an odd contraption." The description of the contraption is "A solid, brass machine with three vertical slots. Tubes and wires connect the left and right slots to the middle one[describe the contents of the odd contraption]. A shiny button, glowing [if the odd contraption is activated]green[otherwise]red[end if], rests just below the middle slot." The odd contraption is fixed in place.

To say describe the contents of the odd contraption:
	repeat with niche running through contraption slots:
		if the niche contains a canister:
			say ". In [the niche] is [a list of things contained by the niche]";

A contraption slot is a kind of container.  A contraption slot is fixed in place. The description of a contraption slot is "The narrow slot is about the length of your forearm."

The left slot is a contraption slot. The left slot is part of the contraption.

The middle slot is a contraption slot. The middle slot is part of the contraption.

The right slot is a contraption slot. The right slot is part of the contraption.

Definition: The odd contraption is activated if the middle slot contains a element-less canister and the left slot contains a canister that is not element-less and the right slot contains a canister that is not element-less.

Check inserting something that is not a canister into a contraption slot (this is the can't insert something other than a canister into a contraption slot rule):
	say "[The noun] does not fit in the slot." instead;
	
Instead of inserting a canister into a contraption slot that contains a canister (called the tube) (this is the can't insert a canister into an occupied contraption slot rule):
	say "That slot is already holding [a tube].";
	
Instead of inserting a canister into a contraption slot (called the niche):
	move the noun to the niche;
	say "You slide [the noun] into [the second noun] and it clicks into place[if the odd contraption is activated]. You notice the button starts to glow green[end if].";
	rule succeeds;
	
Instead of taking a canister that is contained by a contraption slot (called the niche):
	say "You remove [the noun] from [the niche][if the odd contraption is activated]; you notice the shiny button switches from glowing green to red[end if].";
	move the noun to the player;

One water canister is in the left slot. One earth canister is in the right slot. One element-less canister is in the middle slot.

The shiny button is part of the odd contraption. "A large button, glowing[if the odd contraption is activated]green[otherwise]red[end if]."

[
			Earth		Air		Fire		Water
	Earth	earth		/		magma	ooze
	Air		/			air		smoke		ice
	Fire	magma	smoke	fire			/
	Water	ooze		ice		/			water

]
The elemental reactions is a list of list of elements that varies. The elemental reactions is {{earth, element-less, magma, ooze}, {element-less, air, smoke, ice}, {magma, smoke, fire, element-less}, {ooze, ice, element-less, water}}. 

[	
	1. get the element and element number of the canister in the right slot
	2. get the element and element number of the canister in the right slot
	3. determine if elemental reaction is feasible. If so
		a. get the element corresponding to left and right numbers from the list of elemental reactions
		b. set the canister in the middle slot to the new element
		c. empty the canister in the left slot
		d. empty the canister in the right slot
]
Instead of pushing the shiny button when the odd contraption is activated and the left slot contains a canister (called c1) and the right slot contains a canister (called c2) and the middle slot contains a canister (called c3):
	say "Upon depressing the button, the odd contraption hums and vibrates. A hissing noise sounds as each of the canisters is sealed into place. The tubes leading from the left and right canisters jerk compulsively as [element of c1] and [element of c2] flow through them toward the middle one";
	let first element num be the num for the element of c1;
	let second element num be the num for element of c2;
	debug "[line  break]>> Reacting [element of c1] ([first element num]) with [element of c2] ([second element num]).";
	if the first element num is 0 or the second element num is 0:
		debug "[line  break]>> Cannot react [element of c1] ([first element num]) with [element of c2] ([second element num]).";
		say ", but as substances collide just above the middle canister, the contraption gives a final shudder, an ominous buzzer sounds, and everything shuts down. The button, however, remains glowing a friendly green color.";
	otherwise:
		say ". The [element of c1] and [element of c2] begin to react together as their respective canisters empty. There is a final flash in the middle canister as the reaction completes";
		let final element be entry first element num of entry second element num in elemental reactions;
		debug "[line  break]>> Reaction yields [final element]!";
		now the element of c1 is element-less;
		now the element of c2 is element-less;
		now the element of c3 is the final element;	
		if c3 is element-less:
			say " and both elements vanish as they negate each other.";
		otherwise:
			say ", yielding a canister full of [element of c3].";			
		say "[line break]The button is now glowing red."
	
To decide which number is the num for (substance - an element):
	if the substance is earth, decide on 1;
	if the substance is air, decide on 2;
	if the substance is fire, decide on  3;
	if the substance is water, decide on 4;
	decide on 0;

Chapter 6 - The Wardrobe

Section 1 - The Wardrobe Itself

The Wardrobe is north of the Dome. "Racks of clothes extend endlessly in every direction except to the south where you can see an exit."

The racks of clothes are scenery in the Wardrobe. "A seemingly endless supply of clothes and costumes. You wouldn't know where to begin to look."
	
Instead of going up when the location is the Wardrobe:
	say "You can't go that way."

Instead of going up when the location is the Wardrobe:
	try going up;
	
Instead of going nowhere when the location is the Wardrobe:
	say "You meander through the racks of clothes. Finding nothing of interest, you return to where you first entered the wardrobe."
	

Section 2 - The Diving Suit

The rubber suit is a wearable thing in the Wardrobe. "Hanging near the south exit is an oversized rubber suit, complete with metal helmet." The description of the rubber suit is "A bulky, seamless suit of rubber topped with a bulbous, metal helmet. The helmet has several, round viewports for visibility in its front and sides, and a [if the rubber suit is connected to the hose]large valve connected to a rubber hose[otherwise]open, threaded valve[end if] on its back." Understand "rubber", "metal", "helmet", "viewports", "valve", "open valve" as the rubber suit.
		
Carry out going a compass direction (called the way) when the rubber suit is worn:
	say "[one of]Wearing the ungainly suit[or]Sweating profusely from the heat of the suit[purely at random], you stiffly stump off to [the way].[line break]";

After going somewhere when the player encloses the rubber suit and the hose is connected to the rubber suit:
	if the player is not carrying the hose:
		move the hose to the location of the rubber suit;
		say "Attached to the rubber suit, the hose trails along behind you.";
	continue the action;

After wearing the rubber suit:
	say "It's a struggle, but you're able to get into the suit and seal the helmet over your head[if the player is suited up]. A gentle breeze of air flows into the helmet[end if].";
	the suit suffocates in two turns from now;
	
At the time when the suit suffocates:
	if the player is not suited up:
		say "Without any real air flow, it's suffocating and too hot in the rubber suit to continue wearing. It takes awhile, but you manage to unseal the helmet and strip off the suit.";
		move the rubber suit to the player; 
	
Report taking off the rubber suit:
	say "It takes some time, but you're able unseal the helmet and peel off the rubber suit." instead;

Before looking when the rubber suit is worn:
	say "It's difficult to see through the small viewports of the rubber suit's helmet, but you are able to make out your surroundings."
	
After taking something when the rubber suit is worn:
	say "It's difficult to take [the noun] while ensconced in this rubber suit, but you manage it."
	
Section 3 - The Hose

The hose is in the Wardrobe. "A coil of thick hose lies beneath one of the racks of clothes." The description of the hose is "A thick, rubber hose about a hundred feet long with copper, threaded ends." Understand "copper", "ends" as the hose.

Rule for printing room description details of the hose:
	if the hose is connected to something:
		say " (attached to [the list of things connected to the hose])".
		
Rule for printing inventory details of the hose:
	if the hose is connected to something:
		say " (attached to [the list of things connected to the hose])".
		
After examining the hose when the hose is connected to something:
	say "The hose is attached to [the list of things connected to the hose]."

[	
Instead of taking the hose when the hose is connected to something:
	say "Before taking the hose, you detach it from [the list of things connected to the hose].";
	repeat with item running through things connected to the hose:
		now the item is not connected to the hose;
	move the hose to the player;
	rule succeeds;
]

After taking the hose:
	say "You coil up the hose and heft it over your shoulder."
	
Instead of tying the hose to the rubber suit:
	now the hose is handled;
	if the hose is connected to the rubber suit:
		say "The hose is already connected to the suit.";
	otherwise:
		now the hose is connected to the rubber suit;
		say "You thread one end of the hose into the valve that's on the back of the rubber suit's helmet[if the hose is connected to the hole]. A gentle breeze flows into the helmet[end if].";
		rule succeeds;
		
Instead of detaching the hose from the rubber suit:
	if the hose is not connected to the rubber suit:
		say "The hose is not connected to the suit." instead;
	otherwise if the player is wearing the rubber suit:
		say "You reach behind the helmet and manage to detach the hose from the suit[if the hose is connected to the hole]. The gentle breeze within the helmet dies out[end if].";
		the suit suffocates in two turns from now;
	otherwise:
		say "You detach the hose from the suit's helmet.";
	now the hose is not connected to the rubber suit;
	rule succeeds;
	
Instead of detaching the rubber suit from the hose:
	try detaching the hose from the rubber suit;

Chapter 7 - The Octagonal Chamber

Section 1 - The Chamber Itself

The Octagonal Chamber is northeast of the Dome. "A large chamber, the gray stone of its eight walls extending endlessly upward. Egress lies through the southwest wall; the other walls, each set in a compass direction, are laced with runes. A large octagon has been etched into the floor." Understand "chamber" as the background when the location is the Octagonal Chamber.

The gray stone walls are scenery in the Octagonal Chamber. "Constructed from slick, gray stone, each wall is set in one of the compass directions, and all extend upward, out of sight. Runes inscribe the walls." Understand "wall" as gray stone walls.

Does the player mean examining the gray stone walls: it is very likely.

The runes are scenery in the Octagonal Chamber. "Symbols that you cannot comprehend."

Section 2 - The Orbs

An orb is a kind of thing. The description of an orb is "A clear sphere, like a crystal ball, that you can easily cradle with two hands[if not element-less]. Within the sphere you see [print element][end if]." Understand the element property as describing an orb. Understand "elemental orb of" or "orb of" as an orb.

Some orbs are defined by the Table of Elemental Orbs.

Table of Elemental Orbs
orb	element
the Orb of Earth	earth
the Orb of Water	water
the Orb of Air	air
the Orb of Fire 	fire
the Orb of Ooze	ooze
the Orb of Ice	ice
the Orb of Smoke	smoke
the Orb of Magma	magma


Section 3 - The Octagon and Its Stands

The octagon is scenery in the Octagonal Chamber. "Carved into the stone floor of the chamber and drawn parallel to the walls, each line of the octagon runs underneath a small stand[print up octagon]."

To say print up octagon:
	let occupied ways be a list of directions; 
	let activated ways be a list of directions;
	repeat with holder running through stands:
		if the holder contains an orb (called the sphere):
			add the direction of the holder to occupied ways;
			if the element of the holder is the element of the sphere:
				add the direction of the holder to activated ways;
	if the number of entries in occupied ways is not zero:
		say ". The stand[if the number of entries in occupied ways is greater than one]s[end if] to the [occupied ways] [if the number of entries in occupied ways is greater than one]each [end if]hold[if the number of entries in occupied ways is one]s[end if] an orb";
	if the number of entries in activated ways is not zero:
		say ". The line[if the number of entries in activated ways is greater than one]s[end if] to the [activated ways] [if the number of entries in activated ways is one]is[otherwise]are[end if] glowing";

A stand is a kind of directional container. A stand is scenery. The description of a  stand is "Sculpted in the semblance of a claw with four talons, it juts up from the middle of [the direction] side of the inscribed octagon." Understand "small", "stand", "claw", "side" as a stand.

Some stands are defined by the Table of Ritual Stands.
	
Table of Ritual Stands
stand	element	direction	abbreviation
the north stand	earth	north	"n"
the northeast stand	ooze	northeast	"ne"
the east stand	water	east	"e"
the southeast stand	ice	southeast	"se"
the south stand	air	south	"s"
the southwest stand	smoke	southwest	"sw"
the west stand	fire	west	"w"
the northwest stand	magma	northwest	"nw"

When play begins:
	repeat through the Table of Ritual Stands:
		move the stand entry to the Octagonal Chamber;
	move the Orb of Fire to the west stand;

Section 4 - Inserting Orbs into Stands

Definition: A stand is occupied if it contains an orb.

Definition: The octagon is activated if the north stand contains the Orb of Earth and the northeast stand contains the Orb of Ooze and the east stand contains the Orb of Water and the southeast stand contains the Orb of Ice and the south stand contains the Orb of Air and the southwest stand contains the Orb of Smoke and the west stand contains the Orb of Fire and the northwest stand contains the Orb of Magma.

Instead of putting something on a stand:
	try inserting the noun into the second noun;

Check inserting something that is not an orb into a stand (called the holder) (this is the can't insert something that is not an orb into a stand rule):
	say "[The noun] does not appear to fit in [the holder]." instead;
	
Check inserting an orb into an occupied stand (this is the can't insert an orb into an occupied stand rule):
	say "There is already an orb on the stand." instead;
	
Instead of inserting an orb into a stand that is not occupied:
	say "You place [the noun] onto [the second noun].";
	now the noun is in the second noun;
	if the element of the noun is the element of the second noun:
		say "[line break]The talons of the stand grasp the sphere tightly; the line running beneath the stand begins to glow.";
	if the octagon is activated:
		say "[line break]Something happens. Something wonderful.";
		repeat through the Table of Elemental Orbs:
			now the orb entry is nowhere;
	
Instead of taking an orb that is in a stand (called the holder):
	if the element of the noun is the element of the holder:
		say "The talons of the stand release the orb; the line running beneath the stand stops glowing.";
	otherwise:
		say "You take [the noun] from [the holder].";
	move the noun to the player;


Chapter 8 - The Elemental and Paraelemental Planes of Existence

Section 1 - The Intimidating Oak Doors

The intimidating oak doors are an openable closed container in the Foyer. "A pair of intimidating oak doors." The description of the intimidating oak doors is "A pair of oak doors rising more than twice your height[if the location is the Foyer], yet diminished by the height of the foyer's vaulted ceiling[end if][state of oak doors]." The intimidating oak doors are fixed in place. Understand "intimidating" or "intimidating oak doors" or "door" as the intimidating oak doors.

To say state of oak doors:
	if the intimidating oak doors are closed:
		say ". The doors are closed";
	otherwise if the location is a plane:
		say ". The doors are open, revealing a foyer of great antiquity";
	otherwise if the location is the Foyer:
		say ". The doors are open, revealing [the reveal of the room south of the Foyer]";
			
Rule for printing a locale paragraph about the intimidating oak doors:
	now the intimidating oak doors are mentioned;
	
Rule for printing a locale paragraph about the intimidating oak doors when the location is a plane (called the area):
	now the intimidating oak doors are mentioned;
	say "[doors description of the area]. You are tethered to a hose that snakes its way back through the doors.";
	
Rule for printing a locale paragraph about the hose when the location is a plane:
	now the hose is mentioned;
			
Carry out opening the intimidating oak doors when the location is the foyer:
	move the surreal landscape to the foyer;
	
Report opening the intimidating oak doors when the location is the foyer:
	say "You open the doors[first time] and halt in your tracks, stunned at what you see because you're clearly not in Sigil anymore[only]. Beyond the doorframe is a surreal landscape: ";
	choose the row with the element of the plane of existence in the Table of the Planes;
	say reveal of the room entry;
	say  ".[paragraph break]What keeps the planescape beyond the doorframe... you don't know. There must be a barrier of some sort protecting you from the outside.";
	rule succeeds;

Carry out closing the intimidating oak doors when the location is the foyer:
	now the surreal landscape is nowhere;

Instead of entering the closed intimidating oak doors:
	try opening the intimidating oak doors;

Definition: A person is suited up if a person is wearing the rubber suit and the hose is connected to the suit and the hose is connected to the hole.

Explored a plane is a truth state that varies. Explored a plane is false.

Instead of entering the open intimidating oak doors when the location is the Foyer and the player is not suited up:
	if the player is wearing the rubber suit and (the hose is not connected to the hole or the hose is not connected to the rubber suit):
		say "It's already hot and suffocating in this rubber suit; you certainly wouldn't last long out there.";
	otherwise if explored a plane is true:
		say "Before going out the door, you don the rubber suit and attach the hose.";
		now the player is wearing the rubber suit;
		now the hose is connected to the rubber suit;
		now the hose is connected to the hole;
		try entering the intimidating oak doors;
	otherwise:
		say "Without any protection, you don't think you would last too long out there.";

Instead of entering the open intimidating oak doors when the location is the Foyer and the player is suited up:
	say "Encased in the rubber suit and tethered to the wall by the hose, you step out into the plane...";
	let the area be the room south of the Foyer;
	now explored a plane is true;
	move the intimidating oak doors to the area; 
	move hose to the area;
	move the player to the area;

Section 3 - Planes of Existence

A plane is a kind of room. A plane has some text called the reveal. The reveal of a plane is usually "a plane of existence". A plane has some text called the doors description. The doors description of a plane is usually "Nearby are a pair of intimidating oak doors that open into a hallway of great antiquity."

The surreal landscape is scenery.

Instead of examining the surreal landscape:
	say "Through the doorframe you see [reveal of the room south of the Foyer]." Understand "plane", "planescape" as the surreal landscape.
	
Understand "stalagmites", "stalactites", "cavern", "veins", "ore", "jewels" as the surreal landscape when the plane of existence is earth.

Understand "water", "ocean", "sea", "realm", "underwater realm" as the surreal landscape when the plane of existence is water.

Understand "sky", "air" as the surreal landscape when the plane of existence is air.

Understand "flames", "fire", "inferno" as the surreal landscape when the plane of existence is fire.

Understand "ooze", "viscous slime", "rivers", "muck", "mud", "slime" as the surreal landscape when the plane of existence is ooze.

Understand "icicles", "cavern", "ice" as the surreal landscape when the plane of existence is ice.

Understand "clouds", "smoke" as the surreal landscape when the plane of existence is smoke.

Understand "magma", "molten rock", "rock", "lava", "plain" as the surreal landscape when the plane of existence is magma.


Instead of going north when the location is a plane:
	try entering the intimidating oak doors;
	
Instead of going a direction when the location is a plane:
	say "Direction seems meaningless here.";

Instead of entering the open intimidating oak doors when the location is a plane:
	say "You make your way to the doors and step into the foyer of great antiquity.";
	move the hose to the Foyer;
	move the intimidating oak doors to the Foyer; 
	move the player to the Foyer;
	
Instead of closing the open intimidating oak doors when the location is a plane:
	say "Closing the doors would most likely cut off the air supply through the hose.";
	
The Plane of Earth is a plane. "An enormous cavern of stalactites and stalagmites, all illuminated by glowing jewels and shimmering veins of ore." The reveal is "an immense cavern of stalagmites and stalactites illuminated by glowing jewels". The doors description is "Embedded in one of the cavern's walls is the familiar pair of intimidating oak doors". Understand "veins of ore", "veins", "ore", "glowing jewels", "jewels", "gems", "stalactites", "stalagmites" as the background when the location is the Plane of Earth.

The Orb of Earth is in the Plane of Earth. The initial appearance of the Orb of Earth is "Sitting atop a broken stalagmite is a crystal orb."

The Plane of Water is a plane. "You swim through a sea of crystalline blue-green water with no bottom or surface to be seen." The reveal is "an underwater realm shimmering with a crystalline blue-green light". The doors description is "Floating serenely and not far from you are the familiar oak doors". Understand "sea", "ocean", "water" as the background when the location is the Plane of Water.

The Orb of Water is in the Plane of Water. The initial appearance of the Orb of Water is "Floating before you like a lone bubble is a crystal orb."

The Plane of Air is a plane. "You float in a world of brilliant blue, as if hovering in a clear, cloudless sky with no ground in sight." The reveal is "an endless plane of brilliant blue, as if you peer out into a clear, cloudless sky". The doors description is "Floating serenely nearby are a pair of intimidating oak doors that open into a hallway of great antiquity". Understand "sky", "air" as the background when the location is the Plane of Air.

The Orb of Air is in the Plane of Air. The initial appearance of the Orb of Air is "A crystal orb floats within arm's reach."

The Plane of Fire is a plane. The Plane of Fire is south of the Foyer."Flames tower around you as you stand (or float--it's hard to say) in the middle of an endless inferno. Although the suit and hose provide a steady stream of air, you can feel the heat clawing at you." The reveal is "an endless inferno of towering flames". The doors description is "Seemingly untouched by the flames, a pair of intimidating oak doors lead back into the safety of an immense foyer". Understand "flames", "fire", "inferno" as the background when the location is the Plane of Fire.

The Plane of Ooze is a plane. "A gelatinous, slimy hole of mud, bubbling and belching beneath your feet. Every step is a struggle as the thick ocher attempts to drag you down. Occasionally, a fountain of the sickly stuff erupts, spattering the landscape with giant, viscous globs." The reveal is "rivers of viscous slime permeate a wasteland of mud and ooze". The doors description is "Rising out of the muck are a pair of oak doors". Understand "mud", "slime", "ocher", "globs", "stuff", "ooze" as the background when the location is the Plane of Ooze.

The Orb of Ooze is in the Plane of Ooze. The initial appearance of the Orb of Ooze is "Stuck in the muck is a crystal orb."

The Plane of Ice is a plane. "Icicles as thick and long as towers hang from above in this immense cavern, and thick, crystalline structures weave a lattice of ice along the floors and walls.  You can feel the chill seeping its way through the rubber of your suit." The reveal is "a cavernous chamber of ice". The doors description is "A pair of intimidating oak doors rest in one of the walls." Understand "ice", "icicles", "cavern", "cave", "structures", "lattice" as the background when the location is the Plane of Ice.

The Orb of Ice is in the Plane of Ice. The initial appearance of the Orb of Ice is "A crystal orb rests on a nearby shelf of ice."

The Plane of Smoke is a plane. "You float within a thick, dark, roiling cloud of soot, ash and brimstone. It's uncomfortably warm here." The reveal is "clouds of thick, roiling smoke". The doors description is "Barely discernible through the smoke are a pair of oak doors leading into a foyer of great antiquity". Understand "clouds", "soot", "ash", "brimstone", "smoke" as the background when the location is the Plane of Smoke.

The Orb of Smoke is in the Plane of Smoke. The initial appearance of the Orb of Smoke is "A crystal orb floats nearby."

The Plane of Magma is a plane. "Molten rock slithers, bubbles, and bursts around you, occasionally erupting in a geyser of liquid red. Heat permeates your suit, slicking your skin with sweat." The reveal is "a slithering plain of molten rock". The doors description is "Rising out of the lava is a pair of intimidating oak doors." Understand "magma", "lava", "molten rock", "geyser" as the background when the location is the Plane of Magma.

The Orb of Magma is in the Plane of Magma. The initial appearance of the Orb of Magma is "Half-buried in a small crater of liquid rock lies a crystal orb."

Table of the Planes
element	room	
earth	Plane of Earth
water	Plane of Water
air	Plane of Air
fire	Plane of Fire
ooze	Plane of Ooze
ice	Plane of Ice
smoke	Plane of Smoke
magma	Plane of Magma

Section 4 - Opening and Closing Canisters

Instead of opening an element-less canister:
	say "You flip open the lid with your thumb. Nothing happens, so you close the canister back up.";
	
Instead of opening an imbued canister:
	say "You flip open the lid with your thumb. The ethereal essence within seeps out of the canister and disappears.";
	now the element of the noun is element-less;
	
Instead of opening an element-less canister when the location is a Plane:
	enchant the noun;
	
To enchant (the holder - a canister):
	say "You flip open the lid with your thumb. The canister begins to glow and vibrate, as an essence of [plane of existence] from your surroundings streams into the canister. The canister hums for a moment, then goes silent.";
	now the element of the holder is the plane of existence;
	

Part 4 - The Plot

Chapter 1 -  Starting the Game

When  play begins:
	say "The door leading back to Sigil closes behind you with a thunderous boom that you thought incapable within this small, dilapidated shack. But what you entered doesn't seem to be a small, dilapidated shack at all..."
	
Part 5 - Help

Part 6 - Testing

Chapter 1 - Notes for Beta Testers - Not for release

[Allows beta testers to write notes in game.]
After reading a command (this is the ignore beta-comments rule):
	if the player's command matches the regular expression "^\*":
		say "(Noted.)"; 
		reject the player's command.
		
Chapter 2 - Debugging

[ Gotta debug! ]
Debugging is a truth state that varies. Debugging is false.
	
To debug (msg - some text):
	if debugging is true:
		say "[msg][line break]";		

[
When play begins:
	now debugging is true;
]

Chapter 3 - Special Commands - Not for release

Imbuing it with is an action applying to one visible thing and an element.

Understand "imbue [something] with [an element]" as imbuing it with.

Carry out imbuing something with an element (this is the cannot imbue a non-elemental container rule):
	if the noun is not an elemental container:
		say "You can't imbue that with [the second noun].";
		rule fails;
		
Carry out imbuing an elemental container with an element (called the stuff) (this is the imbue elemental container with element rule):
	now the element of the noun is the stuff;
	
Report imbuing an elemental container with an element (this is the report imbuing an elemental container with an element rule):
	say "[The noun] glows as it is infused with [the element understood].";
	
Chapter 4 - Testing Commands - Not for release

Test gather-orbs with "purloin orb of earth / purloin orb of air / purloin orb of fire / purloin orb of water / purloin orb of smoke / purloin orb of magma/ purloin orb of ice / purloin orb of ooze".

Test place-orbs with "put orb of earth on north stand / x octagon / put orb of ooze on northeast stand / x octagon /put orb of water on east stand / x octagon / put orb of ice on southeast stand /x octagon / put orb of air on south stand /x octagon / put orb of smoke on southwest stand /x octagon / put orb of fire on west stand /x octagon / put orb of magma on northwest stand / x octagon".


[

NEXT STEP
 X Clean up hose text
 * Start making clues and plots

TODO's

  X Description of hole when hose is attached.
  X Automagically remove suit when going north of the Foyer
  X Describe air coming into suit when attaching hose to the wall when wearing suit
  X Describe air flow leaving suit when detaching hose from hole while wearing suit
  X Start suffocating player when hose is not attached to hole (every turn rule)
  X Trying to close doors when in a plane because it would cut off hose.
  X Detaching the hose - verb
  X Detaching the hose when in a plane - that's a bad idea
  X Dome scenery - understand different words depending on the plane
  X Foyer scenery - understand different words as describing the plane
  X Going a direction in the wardrobe.
  ? Different warnings for the plane of existence when leaving the doors?
  ? Visit some planes without gear?
  ? Octagon description right up front?


BUGS
X >attach hose to wall
You can't see any such thing

X >x dome
Which do you mean, Background or Outside the dome?

X >x walls
Which do you mean, Background or the gray stone walls?


]