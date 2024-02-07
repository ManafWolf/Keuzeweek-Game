--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--

entered = false;
hasSpell = false;
castSpellLib = false;

function story(aName)
	if(aName == "start") then
		playMusic("background.wav")
		setBackground("evilMansion.JPG")
		createTextfield("You were just taking a walk around the neighborhoor and\ndecided to randomly approach a house for literally no reason")
		createButton("exit", "Kill yourself")
		createButton("entrance", "Fuck it, we ball")
	end
	if(aName == "entrance") then
		if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
		CLS();
		setBackground("corridor.JPG");
		createTextfield("You've entered the empty corridor, it seems abandoned.")
		createButton("piss", "Start Pissing");
		createButton("leftHallway", "Go to the hallway on your left");
		createButton("rightHallway", "Go to the hallway on your right")
		createButton("middle", "Go down the middle")
	end
	if(aName == "piss") then
		playSound("pissing.wav")
	end
	if(aName == "leftHallway") then
		playSound("mini.wav")
		CLS();
		setBackground("miniladd.jpg")
		createTextfield("You stumble upon mini ladd, he offers to let him sniff you in\nexchange for a safe code")
		createButton("entrance", "Fucking run");
		if(hasSpell == false) then
			createButton("searchBooks", "Let mini ladd sniff you in exchange for the code")
		end
	end
	if(aName == "searchBooks") then
		CLS();
		createTextfield("While mini ladd was sniffing you he whispered in  your ear\nThe code is 80085")
		createButton("entrance", "Kiss mini ladd goodbye")
		hasSpell = true;
	end
	if(aName == "rightHallway") then
		CLS()
		playSound("footstep.wav")
		setBackground("rightHallway.jpg")
		if(castSpellLib == true) then
			createTextfield("There is nothing left to do in this room (Dumbass)")
		else
			createTextfield("You enter some goofy ahh room, there is a safe in the room\nbut you dont know the combination")
		end
		
		createButton("entrance", "You hump your way out of the room")
		if(hasSpell == true and castSpellLib == false) then
			createButton("rightHallwaySpell", "Enter the code given to you by the mini chad")
		end
	end
	if(aName == "rightHallwaySpell") then
		CLS()
		createTextfield("The safe opens and there is a Louis belt inside")
		castSpellLib = true;
		createButton("entrance", "Griddy away")
	end
	if(aName == "middle") then
	CLS()
		if(hasSpell == true and castSpellLib == true) then
			playSound("rizz2.wav")
			setBackground("Maafje2.jpg")
			createTextfield("Damn cuh you can just leave, but don't come back to my crib\nyou got that? JK *Shoots*")
			createButton("exit", "*Get Shot*")
		else
			playSound("rizz.wav")
			setBackground("Maafje1.jpg")
			createTextfield("Yo ass better get outta here faster then my dad left me!\nI would've let you go if you gave me the Louis belt I lost")
			createButton("exit", "You run away because you can't compete with the big dick energy")
		end
	end
	if(aName == "exit") then
	CLS()
		setBackground("Dead.jpg")
		playSound("YouDied.wav")
		createButton("close", "Ascend")
	end
	if(aName == "close") then
		exitGame();
	end
end





