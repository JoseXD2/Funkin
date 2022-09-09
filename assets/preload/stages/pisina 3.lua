function onCreate()
	-- background shit
	makeLuaSprite('cielo', 'Lawn/cielo og', -470, -350);
        scaleObject('cielo', 1.2, 1.2);
        addLuaSprite('cielo', false);

makeAnimatedLuaSprite('zombie', 'Lawn/zombie 1', 850, 50);
scaleObject('zombie', 0.8, 0.8);
addAnimationByPrefix('zombie', 'idle', 'Zombie boppin', 24, true);
objectPlayAnimation('zombie', 'idle');
addLuaSprite('zombie', false);

makeAnimatedLuaSprite('zombie 2', 'Lawn/zombie 2', 450, -10);
scaleObject('zombie 2', 0.8, 0.8);
addAnimationByPrefix('zombie 2', 'idle', 'Zombie boppin Bucket', 24, true);
objectPlayAnimation('zombie 2', 'idle');
addLuaSprite('zombie 2', false);

makeAnimatedLuaSprite('zombie 3', 'Lawn/zombie 3', 1170, -10);
scaleObject('zombie 3', 0.8, 0.8);
addAnimationByPrefix('zombie 3', 'idle', 'Zombie boppin', 24, true);
objectPlayAnimation('zombie 3', 'idle');
addLuaSprite('zombie 3', false);

	makeLuaSprite('jardin', 'Lawn/pisina og', -450, -420);
        scaleObject('jardin', 1.2, 1.2);
	addLuaSprite('jardin', false);
	
makeAnimatedLuaSprite('gf', 'Lawn/gf-p', 1870, 170);
scaleObject('gf', 1, 1);
addAnimationByPrefix('gf', 'idle', 'GF Dancing Beat', 29, true);
objectPlayAnimation('gf', 'idle');
addLuaSprite('gf', false);

end