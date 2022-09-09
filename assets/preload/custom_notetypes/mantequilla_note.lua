function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'mantequilla_note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'CABBAGENOTE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'mantequilla_note' then
		makeLuaSprite('1', 'splat 4', 500, -300)
		makeLuaSprite('2', 'splat 5', 300, 0)
		makeLuaSprite('3', 'splat 6', 600, 0)
		setScrollFactor('1', 0,0);
		setObjectCamera('1', 'hud')
		setScrollFactor('2', 0,0);
		setObjectCamera('2', 'hud')
		setScrollFactor('3', 0,0);
		setObjectCamera('3', 'hud')
		runTimer('splash', 2)
                characterPlayAnim('dad', 'shoot', true)
                playSound('splashimpact',1);
		math.randomseed(os.time())
        math.random(); math.random(); math.random()
        
            for x = 1, 1 do
                value = math.random(3)
                addLuaSprite(value, true)
		end
	end

	function onTimerCompleted(tag, loops, loopsLeft)
        if tag == 'splash' then 
			doTweenAlpha('splashfade1', '1', 0, 1, 'linear')
			doTweenAlpha('splashfade2', '2', 0, 1, 'linear')
			doTweenAlpha('splashfade3', '3', 0, 1, 'linear')
		end
	end
end