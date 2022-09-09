function onUpdate(elapsed)
	if dadName == 'tripitidora-lilypad' then --replace the name for your character name
	  if curStep >= 0 then
  
		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/80)
  
		doTweenY(dadTweenY, 'dad', -302-12*math.sin((currentBeat*0.25)*math.pi),0.001)

            end
	end
end