function onCreate()
	makeAnimatedLuaSprite('rain', 'rain', 0, 0);
	setLuaSpriteScrollFactor('rain', 0.3, 0.3);
	scaleObject('rain', 1, 1);

	makeAnimatedLuaSprite('splash', 'splash', 0, 50);

	addLuaSprite('splash', false);
	addAnimationByPrefix('splash', 'loop', 'splash loop', 15, true);
	setLuaSpriteScrollFactor('splash', 0.3, 0.3);
	addLuaSprite('rain', true);
	addAnimationByPrefix('rain', 'loop', 'rain loop', 15, true);
end