-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Cool Fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetColor = getColorFromHex(value2);

		-- cameraFade('game', value2, duration, true)
		-- cameraFade('hud', value2, duration, true)
		doTweenAlpha('based_fade', 'fade', 255, value1, 'linear')
		
		-- debugPrint(targetColor);
	end
end