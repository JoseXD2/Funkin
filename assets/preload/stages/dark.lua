function onCreate()
	-- background shit
	makeLuaSprite('place', 'lawndark', -600, -300);
	
	addLuaSprite('place', false);
	
	makeLuaSprite('vignette2', 'vignette2', -100, -70);
	scaleObject('vignette2', 1.1, 1.1);
	setObjectCamera('vignette2', 'other')
	
	addLuaSprite('vignette2',true)

	
	makeLuaSprite('tv', 'tvborder', -160, -220);
	scaleObject('tv', 1, 1.1);
	setObjectCamera('tv', 'other')
	
	addLuaSprite('tv',true)

        makeLuaSprite('dark', 'dark', -180, -170);
	scaleObject('dark', 1, 1);
	setObjectCamera('dark', 'other')
	
	addLuaSprite('dark',true)

makeAnimatedLuaSprite('static', 'static', -550, -500);
scaleObject('static', 2, 2);
addAnimationByPrefix('static', 'staticout', 'static glitch', 24, true);
objectPlayAnimation('static', 'staticout');
addLuaSprite('static', true); -- false = add behind characters, true = add over characters
triggerEvent('Load Shader', '', '')-- delete if you dont want the shader
setObjectCamera('static', 'other')
	
end