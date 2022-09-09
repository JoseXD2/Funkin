function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'pea_note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PEANOTE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'pea_note' then
		makeLuaSprite('proyectilepea', 'peas', 500, 150)
		addLuaSprite('proyectilepea', true)
		doTweenX('watchOut', 'proyectilepea', 4000, 0.7, 'linear')
		runTimer('thrown', 1, 4)
		characterPlayAnim('boyfriend', 'dodge2', true)
                characterPlayAnim('dad', 'shoot', true)
                playSound('shooting',1);
	end
end
function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'pea_note' then
		makeLuaSprite('1', 'splat 1', 500, -300)
		makeLuaSprite('2', 'splat 2', 300, 0)
		makeLuaSprite('3', 'splat 3', 600, 0)
		setScrollFactor('1', 0,0);
		setObjectCamera('1', 'hud')
		setScrollFactor('2', 0,0);
		setObjectCamera('2', 'hud')
		setScrollFactor('3', 0,0);
		setObjectCamera('3', 'hud')
		runTimer('splash', 1.5)
		health = getProperty('health')
		setProperty('health', health- 0.4);
		characterPlayAnim('boyfriend', 'hurt', true);
                characterPlayAnim('dad', 'shoot', true);
                playSound('shooting',1);
		cameraShake('camGame', 0.01, 0.1)
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