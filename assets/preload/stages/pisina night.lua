function onCreate()
	-- background shit
	makeLuaSprite('jardin', 'Lawn/pisina night', -450, -420);
        scaleObject('jardin', 1.2, 1.2);
	addLuaSprite('jardin', false);

makeAnimatedLuaSprite('seta-solar-2', 'seta-solar', -650, 220);
scaleObject('seta-solar-2', 1.8, 1.8);
addAnimationByPrefix('seta-solar-2', 'idle', 'idle', 22, true);
objectPlayAnimation('seta-solar-2', 'idle');
addLuaSprite('seta-solar-2', true);

makeAnimatedLuaSprite('seta-solar', 'seta-solar', -5, 220);
scaleObject('seta-solar', 1.8, 1.8);
addAnimationByPrefix('seta-solar', 'idle', 'idle', 22, true);
objectPlayAnimation('seta-solar', 'idle');
addLuaSprite('seta-solar', true);

makeAnimatedLuaSprite('seta-asustada', 'scardey-shroom', 700, 480);
scaleObject('seta-asustada', 1.5, 1.5);
addAnimationByPrefix('seta-asustada', 'idle', 'scardey-shroom idle', 24, true);
objectPlayAnimation('seta-asustada', 'idle');
addLuaSprite('seta-asustada', true);

makeAnimatedLuaSprite('niebla 1', 'niebla', 1460, 120);
scaleObject('niebla 1', 1.8, 1.8);
addAnimationByPrefix('niebla 1', 'loop', 'niebla loop', 15, true);
objectPlayAnimation('niebla 1', 'loop');
addLuaSprite('niebla 1', false);

makeAnimatedLuaSprite('niebla 2', 'niebla', 1300, 280);
scaleObject('niebla 2', 1.8, 1.8);
addAnimationByPrefix('niebla 2', 'loop', 'niebla loop', 14, true);
objectPlayAnimation('niebla 2', 'loop');
addLuaSprite('niebla 2', true);

makeAnimatedLuaSprite('niebla 3', 'niebla', 1270, 380);
scaleObject('niebla 3', 1.8, 1.8);
addAnimationByPrefix('niebla 3', 'loop', 'niebla loop', 13, true);
objectPlayAnimation('niebla 3', 'loop');
addLuaSprite('niebla 3', true);

makeAnimatedLuaSprite('niebla 4', 'niebla', 1370, 480);
scaleObject('niebla 4', 1.8, 1.8);
addAnimationByPrefix('niebla 4', 'loop', 'niebla loop', 12, true);
objectPlayAnimation('niebla 4', 'loop');
addLuaSprite('niebla 4', true);

makeAnimatedLuaSprite('niebla 5', 'niebla', 1200, 690);
scaleObject('niebla 5', 2, 2);
addAnimationByPrefix('niebla 5', 'loop', 'niebla loop', 11, true);
objectPlayAnimation('niebla 5', 'loop');
addLuaSprite('niebla 5', true);


end