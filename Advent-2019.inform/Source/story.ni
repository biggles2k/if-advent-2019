"Advent-2019" by "Michael D. Hilborn"

[
 Started: Mon, Nov 11, 2019
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

An elemental container is a kind of thing. An elemental container has an element. The element of an elemental container is usually element-less. Understand the element property as describing an elemental container. Understand "empty" as an element-less elemental container.

Definition: An elemental container is imbued if it is not element-less.

Before printing the name of a element-less elemental container:
	say "empty ";

After printing the name of an imbued elemental container:
	say " of [element]".

Before printing the plural name of a element-less elemental container:
	say "empty ";
	
Rule for printing the plural name of an imbued elemental container when listing contents:
	say "[element]";

To say print (stuff - an element):
	say "a lot of [stuff]";

Table of Elemental Descriptions
Element	Display
earth	"a lot of dirt"
water	"some water"
air	"a bunch of air"
fire	"a flame"
ooze	"some mud"
ice	"freezing ice"
magma	"molten hot lava"
smoke	"wispy smoke"

A canister is a kind of elemental container. The description of a canister is "A narrow tube of glass about the length of your forearm, capped on one end by a copper lid[if not element-less]. It contains [print element][end if]." Understand "canister of" as a canister.

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


Section 2 - Directional Container
	
A directional container is a kind of container. A directional container has a direction. A directional container has an element.  A directional container has some text called the abbreviation. Understand the abbreviation property as describing a directional container.

Part 3 - The World Model

Chapter 1 - Background

Background is a backdrop. Background is everywhere. Understand "room" or "walls" or "floor" as the background.

Instead of examining background:
	try looking;


Chapter 2 - The Foyer

Section 1 - The Foyer Itself

The Foyer is a room. "A vaulted hallway of great antiquity leads north into a domed chamber. A pair of intimidating oak doors is to the south." Understand "hallway", "vaulted hallway" as the background when the location is the Foyer.

The vaulted ceiling is scenery in the Foyer. "The ceiling rests far above you, the frescoes nestled between its vaulted ribs dimly lit by. . . you do not know. They are simply. . . dimly lit."

The frescoes are scenery in the Foyer. "The frescoes, each sequestered between a pair of vaulted ribs, are too dimly lit to distinguish from down here." Understand "paintings" as the frescoes.

The vaulted ribs are scenery in the Foyer. "Pairs of stone ribs arc up along the walls and hold up the ceiling." Understand "pillars", "walls" as the vaulted ribs. 

The domed chamber from afar is scenery in the Foyer. "It's a large, circular chamber with a curved ceiling; you can tell that much from here. A pedestal sits in its center." Understand "pedestal" as the domed chamber from afar.

Instead of going south from the Foyer:
	try entering the intimidating oak doors;

Chapter 3 - The Dome

Section 1 - Inside the Dome

The Dome is north of the Foyer. "You stand in an immense chamber, its ceiling a massive dome of fluted glass. South lies the foyer while hallways lead off in the northerly directions. In the center of the chamber stands a pedestal, and just south of the pedestal, sunk into the perforated steel floor, is a hatch.[paragraph break]Through the dome you see [through the dome]." Understand "dome" as the background when the location is the Dome.

To say through the dome:
	choose row with element of the plane of existence from Table of Dome Scenery;
	say "[description entry]";
	
Table of Dome Scenery
element	description
earth	"the plane of Earth"
water	"the Plane of Water"
air	"the Plane of Air"
fire	"the Plane of Fire"
ooze	"the Plane of Ooze"
ice	"the Plane of Ice"
smoke	"the Plane of Smoke"
magma	"the Plane of Magma"
	
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
	say "The buttons to the [niche-directions] are glowing. The button to [the blinking direction] is blinking.";
	
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
		say "Something happens.";
	otherwise:
		say "Nothing seems to happen.";

Section 3 - A Simple Hatch

The  hatch is down from the Dome and up from the Mechanical Room. The hatch is a door. The hatch is closed. The hatch is scenery. The description of the hatch is "A steel hatch, currently [if open]open[otherwise]closed[end if]."

Report opening the hatch when the location is the Dome:
	say "The hatch creaks open, revealing a way down." instead.
	
Chapter 4 - The Mechanical Room

Section 1 - The Room Itself

The description of the Mechanical Room is "You are in a large chamber well beneath the dome, surrounded on all sides by an assortment of churning machinery. Dominating the center of the room is a large, metal column. Next to the column, a ladder leads up to a hatch in the perforated ceiling."

The ladder is scenery in the Mechanical Room. "A narrow steel ladder, leading up to a [if the hatch is open]open[otherwise]closed[end if] hatch."

The machinery is scenery in the Mechanical Room. "A noisy, oversized, mechanical potpourri, consisting of gears and pumps, and an endless number of wires and hoses connecting everything." Understand "gears", "pumps", "wires", "hoses" as the machinery.

Instead of listening when the location is the Mechanical Room:
	say  "The mechanical cacophony is deafening."
	
Section 2 - The Column and Its Slots

The column is scenery in the Mechanical Room. "The column stretches from floor to ceiling and has eight sides to it, each facing a different compass direction. A narrow slot, about a forearm in height, has been chiseled into each side of the column."

Report examining the column:
	let niche-directions be a list of directions;
	repeat with niche running through slots:
		if the niche contains a canister:
			add the direction of the niche to niche-directions;
	say "You see a canister in each of the [niche-directions] slots.";
		
A slot is a kind of directional container. The description of a slot is "The slot is at the bottom of a glass tube of wiring that crawls up the [the direction] side of the column and disappears into the ceiling."

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

The Laboratory is northwest of the Dome. "A webwork of glassware, tubes, burners, wires, benches, monitors and other equipment encompasses this immense laboratory. It's difficult to move without disturbing or even breaking something, and occasionally you need to duck under a stray wire or tube. An exit through this delicate web is to the southeast." Understand "laboratory" or "lab" as the background when the location is the Laboratory.

The laboratory equipment is scenery in the Laboratory. "A cornucopia of laboratory equipment seemingly jumbled together at random, but it must make sense to somebody... maybe." Understand "glassware", "tubes", "burners", "wires", "benches", "bench", "monitors" as the laboratory equipment.

Section 2 - The Odd Contraption

The odd contraption is in the Laboratory. "Secluded on a bench in a corner, yet somehow standing out among all of the other equipment, rests an odd contraption." The description of the contraption is "A solid, brass machine with three vertical slots. Tubes and wires connect the left and right slots to the middle one[describe the contents of the odd contraption]. A shiny button, glowing [if the odd contraption is activated]green[otherwise]red[end if], rests just below the middle slot."

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
		say "[element of c1] and [element of c2] begin to react together as their respective canisters empty. There is a final flash in the middle canister as the reaction completes";
		let final element be entry first element num of entry second element num in elemental reactions;
		debug "[line  break]>> Reaction yields [final element]!";
		now the element of c1 is element-less;
		now the element of c2 is element-less;
		now the element of c3 is the final element;	
		if c3 is element-less:
			say " and both elements vanish as they negate each other.";
		otherwise:
			say ", yielding a canister full of [element of c3].";
		say "The button is now glowing red."
	
To decide which number is the num for (substance - an element):
	if the substance is earth, decide on 1;
	if the substance is air, decide on 2;
	if the substance is fire, decide on  3;
	if the substance is water, decide on 4;
	decide on 0;
	

Chapter 6 - The Wardrobe

The Wardrobe is north of the Dome. "A wardrobe with lots of clothes. An exit lies south."

Chapter 7 - The Octagonal Chamber

Section 1 - The Chamber Itself

The Octagonal Chamber is northeast of the Dome. "A large chamber, the gray stone of its eight walls extending endlessly upward. Egress lies through the southwest wall; the other walls, each set in a compass direction, are laced with runes. A large octagon has been etched into the floor." Understand "chamber" as the background when the location is the Octagonal Chamber.

The gray stone walls are scenery in the Octagonal Chamber. "Constructed from slick, gray stone, each wall is set in one of the compass directions, and all extend upward, out of sight. Runes inscribe the walls." Understand "wall" as gray stone walls.

The runes are scenery in the Octagonal Chamber. "Symbols that you cannot comprehend."

Section 2 - The Octagon and Its Stands

The octagon is scenery in the Octagonal Chamber. "Carved into the stone floor of the chamber, each line of the octagon runs underneath a small stand, paralleling a wall of the room[print up octagon]."

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

Section 3 - Inserting Orbs into Stands

Definition: A stand is occupied if it contains an orb.

Definition: The octagon is activated if the north stand contains the Orb of Earth and the northeast stand contains the Orb of Ooze and the east stand contains the Orb of Water and the southeast stand contains the Orb of Ice and the south stand contains the Orb of Air and the southwest stand contains the Orb of Smoke and the west stand contains the Orb of Fire and the northwest stand contains the Orb of Magma.

Instead of putting something on a stand:
	try inserting the noun into the second noun;

Check inserting something that is not an orb into a stand (called the holder) (this is the can't insert something that is not an orb into a stand rule):
	say "[The noun] does not appear to fit in [the holder].";
	
Check inserting an orb into an occupied stand (this is the can't insert an orb into an occupied stand rule):
	say "There is already an orb on the stand." instead;
	
Instead of inserting an orb into a stand that is not occupied:
	say "You place [the noun] onto [the second noun].";
	now the noun is in the second noun;
	if the element of the noun is the element of the second noun:
		say "[line break]The talons of the stand grasp the sphere tightly; the line running beneath stand begins to glow.";
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

The intimidating oak doors are an openable closed container in the Foyer. "A pair of intimidating oak doors." The description of the intimidating oak doors is "A pair of oak doors rising more than twice your height[if the location is the Foyer], yet diminished by the height of the foyer's vaulted ceiling[end if][state of oak doors].". Understand "intimidating" or "intimidating oak doors" or "door" as the intimidating oak doors.

To say state of oak doors:
	if the intimidating oak doors are closed:
		say ". The doors are closed";
	otherwise if the location is a plane:
		say ". The doors are open, revealing a foyer of great antiquity";
	otherwise if the location is the Foyer:
		say ". The doors are open, revealing [the reveal of the room south of the Foyer]";
			
Rule for printing a locale paragraph about the intimidating oak doors when the location is the Foyer:
	now the intimidating oak doors are mentioned;
	
Rule for printing a locale paragraph about the intimidating oak doors when the location is a plane (called the area):
	say doors description of the area;
	
Instead of entering the closed intimidating oak doors:
	try opening the intimidating oak doors;
	
Carry out opening the intimidating oak doors when the location is the foyer:
	move the surreal landscape to the foyer;
	
Report opening the intimidating oak doors when the location is the foyer:
	say "You open the doors[first time], stunned at what you see because you're clearly not in Sigil anymore[only]. Beyond the doorframe is a surreal landscape: ";
	choose the row with the element of the plane of existence in the Table of the Planes;
	say reveal of the room entry;
	say  ".[paragraph break]What keeps the planescape beyond the doorframe... you don't know. There must be a barrier of some sort protecting you from the outside.";
	rule succeeds;

Carry out closing the intimidating oak doors when the location is the foyer:
	now the surreal landscape is nowhere;
	
Section 2 - Planes of Existence

A plane is a kind of room. A plane has some text called the reveal. The reveal of a plane is usually "a plane of existence". A plane has some text called the doors description. The doors description of a plane is usually "Some intimidating oak doors are here."

The surreal landscape is scenery.

Instead of examining the surreal landscape:
	say "Through the doorframe you see [reveal of the room south of the Foyer]."

The Plane of Earth is a plane.
The Plane of Water is a plane.
The Plane of Air is a plane.
The Plane of Fire is a plane. The Plane of Fire is south of the Foyer.
The Plane of Ooze is a plane.
The Plane of Ice is a plane.
The Plane of Smoke is a plane.
The Plane of Magma is a plane.


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

Part 4 - The Plot

Chapter 1 -  Starting the Game

When  play begins:
	say "This place is bigger than you thought."
	
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

When play begins:
	now debugging is true;

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