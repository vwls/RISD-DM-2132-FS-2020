(* 
Minecraft World-Gen Screenshot Taker
Sept. 16, 2020
Travess Smalley

Documentation:
This is a script that generates 120 New Minecraft Worlds and takes screenshots
of the first thing you see when you spawn in the world. Then the script closes the world 
and deletes it. Was created to work with Minecraft 1.16.3 .

It's based on keyboard inputs so you have to go to 
	System Preferences : 
		Security & Privacy : 
			Privacy panel's Automation and Accessibility
and allow Script Editor to access the keyboard.

!!!!!   This script relies on Minecraft already being open on your computer and you're at the title
screen. After pressing play on the script you have five seconds to command-tab into Minecraft 
before key commands start getting input. The whole process of 120 worlds takes a while. 
On my computer about 30 - 45 seconds per world creation  !!!!!

*)

tell application "System Events"
	delay 10
	
	repeat 120 times
		keystroke tab
		key code 36 #return
		repeat 5 times
			keystroke tab
		end repeat
		key code 36
		keystroke tab
		key code 36
		repeat 3 times
			keystroke tab
		end repeat
		repeat 2 times
			key code 36
		end repeat
		delay 30
		key code 120
		key code 53
		delay 1
		repeat 8 times
			keystroke tab
		end repeat
		key code 36
		delay 5
	end repeat
	
end tell
