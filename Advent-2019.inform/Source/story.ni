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

Definition: A direction is compass if it is north or it is south or it is east or it is west or it is northeast or it is northwest or it is southeast or it is southwest.

Chapter 2 - New Things

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
	
A canister is a kind of elemental container. The description of a canister is "A pneumatic tube[if not element-less]. It contains [paragraph break][print element][end if]." Understand "canister of" as a canister.

Part 3 - The World Model

Chapter 1 - Background

Background is a backdrop. Background is everywhere. Understand "room" or "walls" or "floor" as the background.

Instead of examining background:
	try looking;

The domed chamber from afar is backdrop. "It's a large, circular chamber with a curved ceiling; you can tell that much from here. A pedestal sits in its center." 

Understand "pedestal" as the domed chamber from afar. The domed chamber from afar is in the Foyer.

Chapter 2 - The Foyer

The Foyer is a room. "A vaulted hallway of great antiquity leads north into a domed chamber. A pair of sturdy oak doors is to the south." Understand "hallway", "vaulted hallway" as the background when the location is the Foyer.

The sturdy oak doors are doors. The sturdy oak doors are south of the Foyer. The sturdy oak doors are scenery. The description of the sturdy oak doors is "A pair of intimidating oak doors rising more than twice your height, yet diminished by the height of the foyer's vaulted ceiling." Understand "intimidating" or "intimidating oak doors" as the sturdy oak doors.

The vaulted ceiling is scenery in the Foyer. "The ceiling rests far above you, the frescoes nestled between its vaulted ribs dimly lit by. . . you do not know. They are simply. . . dimly lit."

The frescoes are scenery in the Foyer. "The frescoes, each sequestered between a pair of vaulted ribs and dimly lit, are difficult to distinguish from down here." Understand "paintings" as the frescoes.

The vaulted ribs are scenery in the Foyer. "Pairs of stone ribs arc up along the walls and hold up the ceiling." Understand "pillars", "walls" as the vaulted ribs. 


Chapter 3 - The Dome

The Dome is north of the Foyer. "You stand in an immense chamber, its ceiling a massive dome of fluted glass. South lies the foyer while hallways lead off in the northerly directions. In the center of the chamber stands a pedestal, and just south of the pedestal, sunk into the perforated steel floor, is a hatch.[paragraph break]Through the dome you see something something..."

The pedestal is scenery in the Dome. "A round pedestal and about as tall as your waistline. Eight stands rim the circumference, each stand located on a compass direction. Upon each stand rests an orb." Understand "stand", "stands", "orbs" as the pedestal.

An orb is a kind of thing. The description of an orb is "A clear sphere, like a crystal ball, that you can easily cradle with two hands[if not element-less]. Within the sphere you see [print element][end if]." An orb has a direction. An orb has an element.  An orb has some text called the abbreviation. Understand the element property as describing an orb. Understand the abbreviation property as describing an orb. Understand "elemental orb of" or "orb of" as an orb.

Some orbs are defined by the Table of Elemental Orbs.

Table of Elemental Orbs
orb	element	direction	abbreviation
the north orb	earth	north	"n"
the northeast orb	element-less	northeast	"ne"
the east orb	water	east	"e"
the southeast orb	element-less	southeast	"se"
the south orb	air	south	"s"
the southwest orb	element-less	southwest	"sw"
the west orb	fire	west	"w"
the northwest orb	element-less	northwest	"nw"


When play begins:
	repeat through Table of Elemental Orbs:
		now the orb entry is part of the pedestal; 




Chapter 4 - The Laboratory

The Lab is northwest of the Dome. "Some kind of laboratory with an exit to the southeast."

Chapter 5 - The Wardrobe

The Wardrobe is north of the Dome. "A wardrobe with lots of clothes. An exit lies south."

Chapter 6 - The Ritual Chamber

The Ritual Chamber is northeast of the Dome. "Some kind of ritual chamber. Exit to the southwest."

Chapter 7 - The Engine Room

The Mechanical Room is down from the Dome. "The engine room. Only way out is up."

Chapter 8 - The Elemental and Paraelemental Planes of Existence

Part 4 - The Plot

Part 5 - Help

Part 6 - Testing - Not for release

Chapter 1 - Notes for Beta Testers

[Allows beta testers to write notes in game.]
After reading a command (this is the ignore beta-comments rule):
	if the player's command matches the regular expression "^\*":
		say "(Noted.)"; 
		reject the player's command.
		
Chapter 2 - Debugging

[ Gotta debug! ]
Debugging is a truth state that varies. Debugging is false.

When play begins:
	now debugging is true;
	
To debug (msg - some text):
	if debugging is true:
		say "[msg][line break]";
		
Imbuing it with is an action applying to one visible thing and an element.

Understand "imbue [something] with [an element]" as imbuing it with.

Carry out imbuing something with an element (this is the cannot imbue a non-elemental container rule):
	if the noun is not an elemental container:
		say "You can't imbue that with [the second noun].";
		rule fails;
		
Carry out imbuing something with an element (called the stuff) (this is the imbue elemental container with element rule):
	now the element of the noun is the stuff;
	
Report imbuing something with an element (this is the report imbuing an elemental container with an element rule):
	say "[The noun] glows as it is infused with [the element understood].";