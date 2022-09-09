function onCreate()
	-- credits to: https://gamebanana.com/members/1908754 Unholywanderer04 for this
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'maiz_note' then --Check if the note on the chart is a Shootems Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'pua-note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end

local gloopedAmount = 0
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'maiz_note' then
		health = getProperty('health')
		setProperty('health', health- 0.2);
		characterPlayAnim('boyfriend', 'hurt', true);
                characterPlayAnim('dad', 'shoot', true);
                playSound('damage',1);
	end
end