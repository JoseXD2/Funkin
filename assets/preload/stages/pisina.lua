function onCreate()
	-- background shit
	makeLuaSprite('cielo', 'Lawn/cielo og', -300, -350);
        scaleObject('cielo', 1.2, 1.2);
        addLuaSprite('cielo', false);


makeAnimatedLuaSprite('zombie 2', 'Lawn/zombie 2', 280, -310);
scaleObject('zombie 2', 0.8, 0.8);
addAnimationByPrefix('zombie 2', 'idle', 'buckethead idle', 8, true);
objectPlayAnimation('zombie 2', 'idle');
addLuaSprite('zombie 2', false);

makeAnimatedLuaSprite('zombie 3', 'Lawn/zombie 3', 1020, -310);
scaleObject('zombie 3', 0.8, 0.8);
addAnimationByPrefix('zombie 3', 'idle', 'conehead idle', 8, true);
objectPlayAnimation('zombie 3', 'idle');
addLuaSprite('zombie 3', false);

	makeLuaSprite('jardin', 'Lawn/pisina og', -450, -420);
        scaleObject('jardin', 1.2, 1.2);
	addLuaSprite('jardin', false);
	
makeAnimatedLuaSprite('zampalga xd','Lawn/tanglekelp',1600,40)
scaleObject('zampalga xd', 1.8, 1.8);
addAnimationByPrefix('zampalga xd','idle','tanglekelp idle', 24, true)
objectPlayAnimation('zampalga xd', 'idle');
addLuaSprite('zampalga xd', false);


end