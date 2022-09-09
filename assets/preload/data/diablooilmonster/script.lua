function onCreatePost() 
	addCharacterToList("dad")

	makeLuaText("first", "1", 0, 535, 170)
	addLuaText("first")
        setTextColor('first', 'ff0019')
	makeLuaText("second", "2", 0, 625, 170)
	addLuaText("second")
        setTextColor('second', '9b7a8a')
	makeLuaText("third", "3", 0, 715, 170)
	addLuaText("third")
        setTextColor('third', '8d878d')

	setObjectCamera("first", "hud")
	setObjectCamera("second", "hud")
	setObjectCamera("third", "hud")

	makeLuaText("scary", "remaining misses", 0, 585, 140)
	addLuaText("scary")
        setTextFont('scary', 'scary.ttf')
        setTextColor('scary', 'bbdabb')

	setProperty("scoreTxt.visible", false)
end

function onUpdate(elapsed)

	if misses == 1 then
		removeLuaText("third", true)
	end
	if misses == 2 then
		removeLuaText("second", true)
	end
	if misses == 3 then
		removeLuaText("first", true)
		setProperty("health", 0)
	end
   end
function HudGame()
	addChromaticAbberationEffect('boyfriend',0.001,true)
	addChromaticAbberationEffect('place',0.01)


	addChromaticAbberationEffect('iconP2',0.03)
	addChromaticAbberationEffect('iconP1',0.03)
end

function endHudGame()
	addChromaticAbberationEffect('boyfriend',-0,true)
	addChromaticAbberationEffect('place',-0)

	addChromaticAbberationEffect('iconP2',-0)
	addChromaticAbberationEffect('iconP1',-0)

end