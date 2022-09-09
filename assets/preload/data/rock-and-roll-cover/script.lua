--Created By RamenDominoes(https://gamebanana.com/members/2135195)
--Read Carefully (There's a lot of settings)
--Biggest Shit I've typed up yet, maybe I can trim it down more in the future
--Please Credit if using, BIG THANKS!!!
---------------------------------------------------------------------------------------------------------------


--------Script Options--------


----Main Settings----------------------------------------------------------------------------------------------

Alignment = 'center' --(Options are: 'left', 'right', or 'center')
ScriptDuration = 2.5 --(The amount of time the credits are shown on screen in seconds)

Coders = 'Arkly' --(Coder(s) Name(s))
Artists = 'Diego-Renatox,XEnderxp,Lyno,Marko,gargan' --(Artist(s) Name(s))
Musicians = 'Mayro_Boi,Iamsii' --(Musician(s) Name(s))
Cover = 'Emi_12' --(Cover(s) Name(s))


ShowIcons = 'true'	--(Options are 'true' or 'false')
			--(Does not affect 'center' alignment)
			--(Icon images should be stored in the 'images/credits' folder)
			--(If two or more people are credited, their separate icons will need to be paired manually in an image editing program)
			--(If 'false' do not edit icon names)
				
	CodeIcon = 'arkly' --(Coder(s) Icon Name)
	CodeIconOffsetX = 0 --(Postive moves LEFT, Negative moves RIGHT)
	CodeIconOffsetY = -80 --(Postive moves UP, Negative moves DOWN)

	ArtIcon = 'DummyIcon' --(Artist(s) Icon Name)
	ArtIconOffsetX = 0 --(Postive moves LEFT, Negative moves RIGHT)
	ArtIconOffsetY = -80 --(Postive moves UP, Negative moves DOWN)

	MusicIcon = 'Neo' --(Musician(s) Icon Name)
	MusicIconOffsetX = 0 --(Postive moves LEFT, Negative moves RIGHT)
	MusicIconOffsetY = -80 --(Postive moves UP, Negative moves DOWN)

	CoverIcon = 'Emi' --(Cover(s) Icon Name)
	CoverIconOffsetX = 0 --(Postive moves LEFT, Negative moves RIGHT)
	CoverIconOffsetY = -80 --(Postive moves UP, Negative moves DOWN)

IconOffsetX = 0	--(Moves every icon on the X axis)
		--(Postive moves LEFT, Negative moves RIGHT)

IconOffsetY = 0 --(Moves every icon on the Y axis)
		--(Postive moves UP, Negative moves DOWN)

---------------------------------------------------------------------------------------------------------------


----Bar Settings-----------------------------------------------------------------------------------------------

CodingBarLength = 200 --(Changes the length of the bar the coder name(s) rest on)
ArtistBarLength  = 1200 --(Changes the length of the bar the artist name(s) rest on)
MusicianBarLength  = 400 --(Changes the length of the bar the musician name(s) rest on)
CoverBarLength  = 260 --(Changes the length of the bar the charter name(s) rest on)

--(Uses Hex Color Codes)
CodingBackgroundBarColor = '0fe718'
ArtistBackgroundBarColor = 'a6e910'
MusicianBackgroundBarColor = '00ff12'
CoverBackgroundBarColor = 'e6ebe5'
--------------------
CodingForegroundBarColor = '000000'
ArtistForegroundBarColor = '000000'
MusicianForegroundBarColor = '000000'
CoverForegroundBarColor = '000000'

---------------------------------------------------------------------------------------------------------------


----Font Settings----------------------------------------------------------------------------------------------

FontSize = 53 --(Changes the size of every letter & the thickness of each bar)
FontBorderThickness = 2 --(Changes the thickness of the border on every letter)
FontType = 'vcr.ttf' --(Selects whichever font in the 'mods/fonts' folder)

--(Uses Hex Color Codes)
CoderNameColor = '000000'
ArtistNameColor = '000000'
MusicianNameColor = '000000'
CoverNameColor = '000000'
--------------------
CoderNameBorderColor = '56f55d'
ArtistNameBorderColor = 'a7bb14'
MusicianNameBorderColor = '00a30c'
CoverNameBorderColor = 'fcfcfc'

TeamNamesOffset = 20 --(Postive moves UP, Negative moves DOWN)

--(Uses Hex Color Codes)
CoderHeaderColor = '000000'
ArtistHeaderColor = '000000'
MusicianHeaderColor = '000000'
CoverHeaderColor = '000000'
--------------------
CoderHeaderBorderColor = '0fe718'
ArtistHeaderBorderColor = 'e9e510'
MusicianHeaderBorderColor = '003a04'
CoverHeaderBorderColor = 'e910d3'

RoleHeaderOffset = 10 --(Postive moves UP, Negative moves DOWN)

---------------------------------------------------------------------------------------------------------------


----Miscellaneous Settings-------------------------------------------------------------------------------------

GlobalOffset = 0.9	--(Changes the position of every script asset on the Y axis)
			--(Postive moves UP, Negative moves DOWN)

CameraType = 'other'	--(Wouldn't recommend changing)
			--(Options are 'Game', 'Hud', & 'Other')

BarTransparency = 0.8	--(Wouldn't recommend changing)
			--(Sets how visible the background and foreground bar are)
			--(Maximum value is 1)

WordTransparency = 1	--(Wouldn't recommend changing)
			--(Sets how visible every letter is)
			--(Maximum value is 1)

---------------------------------------------------------------------------------------------------------------


--------End of Options--------






---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
----------------I WOULD NOT RECOMMEND EDITING STUFF BEYOND THIS LINE UNLESS YOU KNOW HOW TO LOL----------------
---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------

HeaderSize = (FontSize/16)*5
BarThickness = (FontSize/4)*5
HeaderBorderThickness = (FontBorderThickness/3)*2
IconScale = BarThickness/71.4285714

function onCreatePost()

--LEFT ALIGNMENT

	if Alignment == 'left' then

		--BackGround--
		
		--Coding
		makeLuaSprite('CodeBG', '', -CodingBarLength - 10, 165 +- GlobalOffset)
		makeGraphic('CodeBG', CodingBarLength + 10 , BarThickness + 10, CodingBackgroundBarColor)
		setObjectCamera('CodeBG', CameraType)
		addLuaSprite('CodeBG', true)
		setProperty('CodeBG.alpha', BarTransparency)

		--Art
		makeLuaSprite('ArtBG', '', -ArtistBarLength - 10, (165 + (BarThickness + 10))+- GlobalOffset)
		makeGraphic('ArtBG', ArtistBarLength + 10, BarThickness + 10, ArtistBackgroundBarColor)
		setObjectCamera('ArtBG', CameraType)
		addLuaSprite('ArtBG', true)
		setProperty('ArtBG.alpha', BarTransparency)

		--Music
		makeLuaSprite('MusicBG', '', -MusicianBarLength - 10, (165 + (2 * (BarThickness + 10))) +- GlobalOffset)
		makeGraphic('MusicBG', MusicianBarLength + 10, BarThickness + 10, MusicianBackgroundBarColor)
		setObjectCamera('MusicBG', CameraType)
		addLuaSprite('MusicBG', true)
		setProperty('MusicBG.alpha', BarTransparency)
		setObjectOrder('MusicBG', BGLayer)

		--Cover
		makeLuaSprite('CoverBG', '', -CoverBarLength - 10, (165 + (3 * (BarThickness + 10))) +- GlobalOffset)
		makeGraphic('CoverBG', CoverBarLength + 10, BarThickness + 10, CharterBackgroundBarColor)
		setObjectCamera('CoverBG', CameraType)
		addLuaSprite('CoverBG', true)
		setProperty('CoverBG.alpha', BarTransparency)
		setObjectOrder('CoverBG', BGLayer)
		
		
		--ForeGround--
		--Coding
		makeLuaSprite('CodeFG', '', -CodingBarLength, 170 +- GlobalOffset)
		makeGraphic('CodeFG', CodingBarLength, BarThickness, CodingForegroundBarColor)
		setObjectCamera('CodeFG', CameraType)
		addLuaSprite('CodeFG', true)
		setProperty('CodeFG.alpha', BarTransparency)

		--Art
		makeLuaSprite('ArtFG', '', -ArtistBarLength, (170 + (BarThickness + 10)) +- GlobalOffset)
		makeGraphic('ArtFG', ArtistBarLength, BarThickness, ArtistForegroundBarColor)
		setObjectCamera('ArtFG', CameraType)
		addLuaSprite('ArtFG', true)
		setProperty('ArtFG.alpha', BarTransparency)
		
		--Music
		makeLuaSprite('MusicFG', '', -MusicianBarLength, (170 + (2 * (BarThickness + 10))) +- GlobalOffset)
		makeGraphic('MusicFG', MusicianBarLength, BarThickness, MusicianForegroundBarColor)
		setObjectCamera('MusicFG', CameraType)
		addLuaSprite('MusicFG', true)
		setProperty('MusicFG.alpha', BarTransparency)

		--Cover
		makeLuaSprite('CoverFG', '', -CoverBarLength, (170 + (3 * (BarThickness + 10))) +- GlobalOffset)
		makeGraphic('CoverFG', CoverBarLength, BarThickness, CharterForegroundBarColor)
		setObjectCamera('CoverFG', CameraType)
		addLuaSprite('CoverFG', true)
		setProperty('CoverFG.alpha', BarTransparency)


		--Role Headers--

		--Coding
		makeLuaText('CodeHeader', 'Coding :', 1280, -CodingBarLength, (170 +- RoleHeaderOffset)+- GlobalOffset)
		addLuaText('CodeHeader') 
		setTextSize('CodeHeader', HeaderSize)
		setTextAlignment('CodeHeader', 'left')
		setTextColor('CodeHeader', CoderHeaderColor)
		setTextBorder('CodeHeader', HeaderBorderThickness, CoderHeaderBorderColor)
		setTextFont('CodeHeader', FontType)
		setObjectCamera('CodeHeader', CameraType)
		setProperty('CodeHeader.alpha', WordTransparency)
		
		
		--Art
		makeLuaText('ArtHeader', 'Artist :', 1280, -ArtistBarLength, ((170 + (BarThickness + 10)) +- RoleHeaderOffset)+- GlobalOffset)
		addLuaText('ArtHeader')
		setTextSize('ArtHeader', HeaderSize)
		setTextAlignment('ArtHeader', 'left')
		setTextColor('ArtHeader', ArtistHeaderColor)
		setTextBorder('ArtHeader', HeaderBorderThickness, ArtistHeaderBorderColor)
		setTextFont('ArtHeader', FontType)
		setObjectCamera('ArtHeader', CameraType)
		setProperty('ArtHeader.alpha', WordTransparency)

		--Music
		makeLuaText('MusicHeader', 'Musician :', 1280, -MusicianBarLength, ((170 + (2 * (BarThickness + 10))) +- RoleHeaderOffset)+- GlobalOffset)
		addLuaText('MusicHeader')
		setTextSize('MusicHeader', HeaderSize)
		setTextAlignment('MusicHeader', 'left')
		setTextColor('MusicHeader', MusicianHeaderColor)
		setTextBorder('MusicHeader', HeaderBorderThickness, MusicianHeaderBorderColor)
		setTextFont('MusicHeader', FontType)
		setObjectCamera('MusicHeader', CameraType)
		setProperty('MusicHeader.alpha', WordTransparency)

		--Cover
		makeLuaText('CoverHeader', 'Cover :', 1280, -CoverBarLength, ((170 + (3 * (BarThickness + 10))) +- RoleHeaderOffset)+- GlobalOffset)
		addLuaText('CoverHeader') 
		setTextSize('CoverHeader', HeaderSize)
		setTextAlignment('CoverHeader', 'left')
		setTextColor('CoverHeader', CoverHeaderColor)
		setTextBorder('CoverHeader', HeaderBorderThickness, CoverHeaderBorderColor)
		setTextFont('CoverHeader', FontType)
		setObjectCamera('CoverHeader', CameraType)
		setProperty('CoverHeader.alpha', WordTransparency)

		
		--Team Names--

		--Coding
		makeLuaText('CodeName', Coders, 1280, -CodingBarLength, (195 +- TeamNamesOffset)+- GlobalOffset)
		addLuaText('CodeName') 
		setTextSize('CodeName', FontSize)
		setTextAlignment('CodeName', 'left')
		setTextColor('CodeName', CoderNameColor)
		setTextBorder('CodeName', FontBorderThickness, CoderNameBorderColor)
		setTextFont('CodeName', FontType)
		setObjectCamera('CodeName', CameraType)
		setProperty('CodeName.alpha', WordTransparency)	

		--Art
		makeLuaText('ArtName', Artists, 1280, -ArtistBarLength, (195 + (BarThickness + 10) +- TeamNamesOffset)+- GlobalOffset)
		addLuaText('ArtName')
		setTextSize('ArtName', FontSize)
		setTextAlignment('ArtName', 'left')
		setTextColor('ArtName', ArtistNameColor)
		setTextBorder('ArtName', FontBorderThickness, ArtistNameBorderColor)
		setTextFont('ArtName', FontType)
		setObjectCamera('ArtName', CameraType)
		setProperty('ArtName.alpha', WordTransparency)

		--Music
		makeLuaText('MusicName', Musicians, 1280, -MusicianBarLength, (195 + (2 * (BarThickness + 10)) +- TeamNamesOffset)+- GlobalOffset)
		addLuaText('MusicName') 
		setTextSize('MusicName', FontSize)
		setTextAlignment('MusicName', 'left')
		setTextColor('MusicName', MusicianNameColor)
		setTextBorder('MusicName', FontBorderThickness, MusicianNameBorderColor)
		setTextFont('MusicName', FontType)
		setObjectCamera('MusicName', CameraType)
		setProperty('MusicName.alpha', WordTransparency)

		--Cover
		makeLuaText('CoverName', Cover, 1280, -CoverBarLength, (195 + (3 * (BarThickness + 10)) +- TeamNamesOffset)+- GlobalOffset)
		addLuaText('CoverName')
		setTextSize('CoverName', FontSize)
		setTextAlignment('CoverName', 'left')
		setTextColor('CoverName', CoverNameColor)
		setTextBorder('CoverName', FontBorderThickness, CoverNameBorderColor)
		setTextFont('CoverName', FontType)
		setObjectCamera('CoverName', CameraType)
		setProperty('CoverName.alpha', WordTransparency)

		if ShowIcons == 'true' then
			makeLuaSprite('CodeIcon', 'credits/'..CodeIcon, -CodingBarLength, (((BarThickness + 12.5) +- CodeIconOffsetY) +- IconOffsetY) +- GlobalOffset)
			setObjectCamera('CodeIcon', CameraType)
			addLuaSprite('CodeIcon', true)
			scaleObject('CodeIcon', IconScale, IconScale)

			makeLuaSprite('ArtIcon', 'credits/'..ArtIcon, -ArtistBarLength, (((2 * BarThickness + 25) +- ArtIconOffsetY) +- IconOffsetY) +- GlobalOffset)
			setObjectCamera('ArtIcon', CameraType)
			addLuaSprite('ArtIcon', true)
			scaleObject('ArtIcon', IconScale, IconScale)

			makeLuaSprite('MusicIcon', 'credits/'..MusicIcon, -MusicianBarLength, (((3 * BarThickness + 37.5) +- MusicIconOffsetY) +- IconOffsetY) +- GlobalOffset)
			setObjectCamera('MusicIcon', CameraType)
			addLuaSprite('MusicIcon', true)
			scaleObject('MusicIcon', IconScale, IconScale)

			makeLuaSprite('CoverIcon', 'credits/'..CoverIcon, -CoverBarLength, (((4 * BarThickness + 50) +- CovergIconOffsetY) +- IconOffsetY) +- GlobalOffset)
			setObjectCamera('CoverIcon', CameraType)
			addLuaSprite('CoverIcon', true)
			scaleObject('CoverIcon', IconScale, IconScale)
		end
		--Movement Stuff

		function onCountdownTick(counter)
		
			if counter == 0 then
				doTweenX('MoveCodeBG', 'CodeBG', 0, 0.25, 'QuintOut')
				doTweenX('MoveCodeFG', 'CodeFG', 0, 0.4, 'QuadOut')
				doTweenX('MoveCodeHeader', 'CodeHeader', 0, 0.4, 'QuadOut')
				doTweenX('MoveCodeName', 'CodeName', 0, 0.4, 'QuadOut')
				doTweenX('MoveCodeIcon', 'CodeIcon', ((CodingBarLength - 40) +- CodeIconOffsetX) +- IconOffsetX, 0.4, 'QuintOut')

			elseif counter == 1 then
				doTweenX('MoveArtBG', 'ArtBG', 0, 0.25, 'QuintOut')
				doTweenX('MoveArtFG', 'ArtFG', 0, 0.4, 'QuadOut')
				doTweenX('MoveArtHeader', 'ArtHeader', 0, 0.4, 'QuadOut')
				doTweenX('MoveArtName', 'ArtName', 0, 0.4, 'QuadOut')
				doTweenX('MoveArtIcon', 'ArtIcon', ((ArtistBarLength - 40)  +- ArtIconOffsetX) +- IconOffsetX, 0.4, 'QuintOut')
							
			elseif counter == 2 then
				doTweenX('MoveMusicBG', 'MusicBG', 0, 0.25, 'QuintOut')
				doTweenX('MoveMusicFG', 'MusicFG', 0, 0.4, 'QuadOut')
				doTweenX('MoveMusicHeader', 'MusicHeader', 0, 0.4, 'QuadOut')
				doTweenX('MoveMusicName', 'MusicName', 0, 0.4, 'QuadOut')
				doTweenX('MoveMusicIcon', 'MusicIcon', ((MusicianBarLength - 40)  +- MusicIconOffsetX) +- IconOffsetX, 0.4, 'QuintOut')
							
			elseif counter == 3 then
				doTweenX('MoveCoverBG', 'CoverBG', 0, 0.25, 'QuintOut')
				doTweenX('MoveCoverFG', 'CoverFG', 0, 0.4, 'QuadOut')
				doTweenX('MoveCoverHeader', 'CoverHeader', 0, 0.4, 'QuadOut')
				doTweenX('MoveCoverName', 'CoverName', 0, 0.4, 'QuadOut')
				doTweenX('MoveCoverIcon', 'CoverIcon', ((CoverBarLength - 40)  +- CoverIconOffsetX) +- IconOffsetX, 0.4, 'QuintOut')

				runTimer('Kill Hehe', ScriptDuration, 1)


				function onTimerCompleted(tag, loops, loopsLeft)

					if tag == 'Kill Hehe' then

						runTimer('1', 1, 1)
						runTimer('2', 1.2, 1)
						runTimer('3', 1.4, 1)
						runTimer('4', 1.6, 1)

					elseif tag == '1' then
						doTweenX('MoveCodeBG', 'CodeBG', -CodingBarLength - 10, 0.25, 'QuintIn')
						doTweenX('MoveCodeFG', 'CodeFG', -CodingBarLength, 0.4, 'QuadIn')
						doTweenX('MoveCodeHeader', 'CodeHeader', -CodingBarLength, 0.4, 'QuadIn')
						doTweenX('MoveCodeName', 'CodeName', -CodingBarLength, 0.4, 'QuadIn')
						doTweenX('MoveCodeIcon', 'CodeIcon', -CodingBarLength, 0.4, 'QuintIn')

					elseif tag == '2' then
						doTweenX('MoveArtBG', 'ArtBG', -ArtistBarLength - 10, 0.25, 'QuintIn')
						doTweenX('MoveArtFG', 'ArtFG', -ArtistBarLength, 0.4, 'QuadIn')
						doTweenX('MoveArtHeader', 'ArtHeader', -ArtistBarLength, 0.4, 'QuadIn')
						doTweenX('MoveArtName', 'ArtName', -ArtistBarLength, 0.4, 'QuadIn')
						doTweenX('MoveArtIcon', 'ArtIcon', -CodingBarLength, 0.4, 'QuintIn')
											
					elseif tag == '3' then
						doTweenX('MoveMusicBG', 'MusicBG', -MusicianBarLength - 10, 0.25, 'QuintIn')
						doTweenX('MoveMusicFG', 'MusicFG', -MusicianBarLength, 0.4, 'QuadIn')
						doTweenX('MoveMusicHeader', 'MusicHeader', -MusicianBarLength, 0.4, 'QuadIn')
						doTweenX('MoveMusicName', 'MusicName', -MusicianBarLength, 0.4, 'QuadIn')
						doTweenX('MoveMusicIcon', 'MusicIcon', -CodingBarLength, 0.4, 'QuintIn')

					elseif tag == '4' then
						doTweenX('MoveCoverBG', 'CoverBG', -CoverBarLength - 10, 0.25, 'QuintIn')
						doTweenX('MoveCoverFG', 'CoverFG', -CoverBarLength, 0.4, 'QuadIn')
						doTweenX('MoveCoverHeader', 'CoverHeader', -CoverBarLength, 0.4, 'QuadIn')
						doTweenX('MoveCoverName', 'CoverName', -CoverBarLength, 0.4, 'QuadIn')
						doTweenX('MoveCoverIcon', 'CoverIcon', -CodingBarLength, 0.4, 'QuintIn')
											
						runTimer('Die', 1, 1)

					elseif tag == 'Die' then

						removeLuaSprite('CodeBG')
						removeLuaSprite('ArtBG')
						removeLuaSprite('MusicBG')
						removeLuaSprite('CoverBG')
															
						removeLuaSprite('CodeFG')
						removeLuaSprite('ArtFG')
						removeLuaSprite('MusicFG')
						removeLuaSprite('CoverFG')

						removeLuaSprite('CodeIcon')
						removeLuaSprite('ArtIcon')
						removeLuaSprite('MusicIcon')
						removeLuaSprite('CoverIcon')
																
						removeLuaText('CodeHeader')
						removeLuaText('ArtHeader')
						removeLuaText('MusicHeader')
						removeLuaText('CoverHeader')
				
						removeLuaText('CodeName')
						removeLuaText('ArtName')
						removeLuaText('MusicName')
						removeLuaText('CoverName')

					end
				end
			end
		end
	end

--RIGHT ALIGNMENT

	if Alignment == 'right' then

		--BackGround--
		
		--Coding
		makeLuaSprite('CodeBG', '', screenWidth, 165 +- GlobalOffset)
		makeGraphic('CodeBG', CodingBarLength + 10 , BarThickness + 10, CodingBackgroundBarColor)
		setObjectCamera('CodeBG', CameraType)
		addLuaSprite('CodeBG', true)
		setProperty('CodeBG.alpha', BarTransparency)
		
		--Art
		makeLuaSprite('ArtBG', '', screenWidth, (165 + (BarThickness + 10))+- GlobalOffset)
		makeGraphic('ArtBG', ArtistBarLength + 10, BarThickness + 10, ArtistBackgroundBarColor)
		setObjectCamera('ArtBG', CameraType)
		addLuaSprite('ArtBG', true)
		setProperty('ArtBG.alpha', BarTransparency)

		--Music
		makeLuaSprite('MusicBG', '', screenWidth, (165 + (2 * (BarThickness + 10))) +- GlobalOffset)
		makeGraphic('MusicBG', MusicianBarLength + 10, BarThickness + 10, MusicianBackgroundBarColor)
		setObjectCamera('MusicBG', CameraType)
		addLuaSprite('MusicBG', true)
		setProperty('MusicBG.alpha', BarTransparency)

		--Cover
		makeLuaSprite('CoverBG', '', screenWidth, (165 + (3 * (BarThickness + 10))) +- GlobalOffset)
		makeGraphic('CoverBG', CoverBarLength + 10, BarThickness + 10, CoverBackgroundBarColor)
		setObjectCamera('CoverBG', CameraType)
		addLuaSprite('CoverBG', true)
		setProperty('CoverBG.alpha', BarTransparency)
		
		
		--ForeGround--

		--Coding
		makeLuaSprite('CodeFG', '', screenWidth, 170 +- GlobalOffset)
		makeGraphic('CodeFG', CodingBarLength, BarThickness, CodingForegroundBarColor)
		setObjectCamera('CodeFG', CameraType)
		addLuaSprite('CodeFG', true)
		setProperty('CodeFG.alpha', BarTransparency)


		--Art
		makeLuaSprite('ArtFG', '', screenWidth, (170 + (BarThickness + 10)) +- GlobalOffset)
		makeGraphic('ArtFG', ArtistBarLength, BarThickness, ArtistForegroundBarColor)
		setObjectCamera('ArtFG', CameraType)
		addLuaSprite('ArtFG', true)
		setProperty('ArtFG.alpha', BarTransparency)
		
		--Music
		makeLuaSprite('MusicFG', '', screenWidth, (170 + (2 * (BarThickness + 10))) +- GlobalOffset)
		makeGraphic('MusicFG', MusicianBarLength, BarThickness, MusicianForegroundBarColor)
		setObjectCamera('MusicFG', CameraType)
		addLuaSprite('MusicFG', true)
		setProperty('MusicFG.alpha', BarTransparency)

		--Cover
		makeLuaSprite('CoverFG', '', screenWidth, (170 + (3 * (BarThickness + 10))) +- GlobalOffset)
		makeGraphic('CoverFG', CoverBarLength, BarThickness, CoverForegroundBarColor)
		setObjectCamera('CoverFG', CameraType)
		addLuaSprite('CoverFG', true)
		setProperty('CoverFG.alpha', BarTransparency)


		--Role Headers--

		--Coding
		makeLuaText('CodeHeader', 'Coding :', 1280, CodingBarLength, (170 +- RoleHeaderOffset)+- GlobalOffset)
		addLuaText('CodeHeader') 
		setTextSize('CodeHeader', HeaderSize)
		setTextAlignment('CodeHeader', 'right')
		setTextColor('CodeHeader', CoderHeaderColor)
		setTextBorder('CodeHeader', HeaderBorderThickness, CoderHeaderBorderColor)
		setTextFont('CodeHeader', FontType)
		setObjectCamera('CodeHeader', CameraType)
		setProperty('CodeHeader.alpha', WordTransparency)
		
		
		--Art
		makeLuaText('ArtHeader', 'Artist :', 1280, ArtistBarLength, ((170 + (BarThickness + 10)) +- RoleHeaderOffset)+- GlobalOffset)
		addLuaText('ArtHeader')
		setTextSize('ArtHeader', HeaderSize)
		setTextAlignment('ArtHeader', 'right')
		setTextColor('ArtHeader', ArtistHeaderColor)
		setTextBorder('ArtHeader', HeaderBorderThickness, ArtistHeaderBorderColor)
		setTextFont('ArtHeader', FontType)
		setObjectCamera('ArtHeader', CameraType)
		setProperty('ArtHeader.alpha', WordTransparency)

		--Music
		makeLuaText('MusicHeader', 'Musician :', 1280, MusicianBarLength, ((170 + (2 * (BarThickness + 10))) +- RoleHeaderOffset)+- GlobalOffset)
		addLuaText('MusicHeader')
		setTextSize('MusicHeader', HeaderSize)
		setTextAlignment('MusicHeader', 'right')
		setTextColor('MusicHeader', MusicianHeaderColor)
		setTextBorder('MusicHeader', HeaderBorderThickness, MusicianHeaderBorderColor)
		setTextFont('MusicHeader', FontType)
		setObjectCamera('MusicHeader', CameraType)
		setProperty('MusicHeader.alpha', WordTransparency)

		--Cover
		makeLuaText('CoverHeader', 'Cover :', 1280, CoverBarLength, ((170 + (3 * (BarThickness + 10))) +- RoleHeaderOffset)+- GlobalOffset)
		addLuaText('CoverHeader') 
		setTextSize('CoverHeader', HeaderSize)
		setTextAlignment('CoverHeader', 'right')
		setTextColor('CoverHeader', CoverHeaderColor)
		setTextBorder('CoverHeader', HeaderBorderThickness, CoverHeaderBorderColor)
		setTextFont('CoverHeader', FontType)
		setObjectCamera('CoverHeader', CameraType)
		setProperty('CoverHeader.alpha', WordTransparency)

		
		--Team Names--

		--Coding
		makeLuaText('CodeName', Coders, 1280, CodingBarLength, (195 +- TeamNamesOffset)+- GlobalOffset)
		addLuaText('CodeName') 
		setTextSize('CodeName', FontSize)
		setTextAlignment('CodeName', 'right')
		setTextColor('CodeName', CoderNameColor)
		setTextBorder('CodeName', FontBorderThickness, CoderNameBorderColor)
		setTextFont('CodeName', FontType)
		setObjectCamera('CodeName', CameraType)
		setProperty('CodeName.alpha', WordTransparency)	

		--Art
		makeLuaText('ArtName', Artists, 1280, ArtistBarLength, (195 + (BarThickness + 10) +- TeamNamesOffset)+- GlobalOffset)
		addLuaText('ArtName')
		setTextSize('ArtName', FontSize)
		setTextAlignment('ArtName', 'right')
		setTextColor('ArtName', ArtistNameColor)
		setTextBorder('ArtName', FontBorderThickness, ArtistNameBorderColor)
		setTextFont('ArtName', FontType)
		setObjectCamera('ArtName', CameraType)
		setProperty('ArtName.alpha', WordTransparency)

		--Music
		makeLuaText('MusicName', Musicians, 1280, MusicianBarLength, (195 + (2 * (BarThickness + 10)) +- TeamNamesOffset)+- GlobalOffset)
		addLuaText('MusicName') 
		setTextSize('MusicName', FontSize)
		setTextAlignment('MusicName', 'right')
		setTextColor('MusicName', MusicianNameColor)
		setTextBorder('MusicName', FontBorderThickness, MusicianNameBorderColor)
		setTextFont('MusicName', FontType)
		setObjectCamera('MusicName', CameraType)
		setProperty('MusicName.alpha', WordTransparency)

		--Cover
		makeLuaText('CoverName', Cover, 1280, CoverBarLength, (195 + (3 * (BarThickness + 10)) +- TeamNamesOffset)+- GlobalOffset)
		addLuaText('CoverName')
		setTextSize('CoverName', FontSize)
		setTextAlignment('CoverName', 'right')
		setTextColor('CoverName', CoverNameColor)
		setTextBorder('CoverName', FontBorderThickness, CoverNameBorderColor)
		setTextFont('CoverName', FontType)
		setObjectCamera('CoverName', CameraType)
		setProperty('CoverName.alpha', WordTransparency)

		if ShowIcons == 'true' then
			makeLuaSprite('CodeIcon', 'credits/'..CodeIcon, screenWidth + CodingBarLength - 200, (((BarThickness + 12.5) +- CodeIconOffsetY)+- IconOffsetY) +- GlobalOffset)
			setObjectCamera('CodeIcon', CameraType)
			addLuaSprite('CodeIcon', true)
			scaleObject('CodeIcon', IconScale, IconScale)
			setProperty('CodeIcon.flipX', true)

			makeLuaSprite('ArtIcon', 'credits/'..ArtIcon, screenWidth + ArtistBarLength - 200, (((2 * BarThickness + 25) +- ArtIconOffsetY) +- IconOffsetY) +- GlobalOffset)
			setObjectCamera('ArtIcon', CameraType)
			addLuaSprite('ArtIcon', true)
			scaleObject('ArtIcon', IconScale, IconScale)
			setProperty('ArtIcon.flipX', true)

			makeLuaSprite('MusicIcon', 'credits/'..MusicIcon, screenWidth + MusicianBarLength - 200, (((3 * BarThickness + 37.5) +- MusicIconOffsetY) +- IconOffsetY) +- GlobalOffset)
			setObjectCamera('MusicIcon', CameraType)
			addLuaSprite('MusicIcon', true)
			scaleObject('MusicIcon', IconScale, IconScale)
			setProperty('MusicIcon.flipX', true)

			makeLuaSprite('CoverIcon', 'credits/'..CoverIcon, screenWidth + CoverBarLength - 200, (((4 * BarThickness + 50) +- CoverIconOffsetY) +- IconOffsetY) +- GlobalOffset)
			setObjectCamera('CoverIcon', CameraType)
			addLuaSprite('CoverIcon', true)
			scaleObject('CoverIcon', IconScale, IconScale)
			setProperty('CoverIcon.flipX', true)
		end


		--Movement Stuff

		function onCountdownTick(counter)
		
			if counter == 0 then
				doTweenX('MoveCodeBG', 'CodeBG', (screenWidth - CodingBarLength) - 10, 0.25, 'QuintOut')
				doTweenX('MoveCodeFG', 'CodeFG', screenWidth - CodingBarLength, 0.4, 'QuadOut')
				doTweenX('MoveCodeHeader', 'CodeHeader', 0, 0.4, 'QuadOut')
				doTweenX('MoveCodeName', 'CodeName', 0, 0.4, 'QuadOut')
				doTweenX('MoveCodeIcon', 'CodeIcon', (((screenWidth - CodingBarLength) - 170) +- CodeIconOffsetX) +- IconOffsetX, 0.4, 'QuintOut')

			elseif counter == 1 then
				doTweenX('MoveArtBG', 'ArtBG', (screenWidth - ArtistBarLength) - 10, 0.25, 'QuintOut')
				doTweenX('MoveArtFG', 'ArtFG', screenWidth - ArtistBarLength, 0.4, 'QuadOut')
				doTweenX('MoveArtHeader', 'ArtHeader', 0, 0.4, 'QuadOut')
				doTweenX('MoveArtName', 'ArtName', 0, 0.4, 'QuadOut')
				doTweenX('MoveArtIcon', 'ArtIcon', (((screenWidth - ArtistBarLength) - 170) +- ArtIconOffsetX) +- IconOffsetX, 0.4, 'QuintOut')
							
			elseif counter == 2 then
				doTweenX('MoveMusicBG', 'MusicBG', (screenWidth - MusicianBarLength) - 10, 0.25, 'QuintOut')
				doTweenX('MoveMusicFG', 'MusicFG', screenWidth - MusicianBarLength, 0.4, 'QuadOut')
				doTweenX('MoveMusicHeader', 'MusicHeader', 0, 0.4, 'QuadOut')
				doTweenX('MoveMusicName', 'MusicName', 0, 0.4, 'QuadOut')
				doTweenX('MoveMusicIcon', 'MusicIcon', (((screenWidth - MusicianBarLength) - 170) +- MusicIconOffsetX) +- IconOffsetX, 0.4, 'QuintOut')
							
			elseif counter == 3 then
				doTweenX('MoveCoverBG', 'CoverBG', (screenWidth - CoverBarLength) - 10, 0.25, 'QuintOut')
				doTweenX('MoveCoverFG', 'CoverFG', screenWidth - CoverBarLength, 0.4, 'QuadOut')
				doTweenX('MoveCoverHeader', 'CoverHeader', 0, 0.4, 'QuadOut')
				doTweenX('MoveCoverName', 'CoverName', 0, 0.4, 'QuadOut')
				doTweenX('MoveCoverIcon', 'CoverIcon', (((screenWidth - CoverBarLength) - 170) +- CoverIconOffsetX) +- IconOffsetX, 0.4, 'QuintOut')

				runTimer('Kill Hehe', ScriptDuration, 1)


				function onTimerCompleted(tag, loops, loopsLeft)

					if tag == 'Kill Hehe' then

						runTimer('1', 1, 1)
						runTimer('2', 1.2, 1)
						runTimer('3', 1.4, 1)
						runTimer('4', 1.6, 1)

					elseif tag == '1' then
						doTweenX('MoveCodeBG', 'CodeBG', screenWidth, 0.25, 'QuintIn')
						doTweenX('MoveCodeFG', 'CodeFG', screenWidth, 0.4, 'QuadIn')
						doTweenX('MoveCodeHeader', 'CodeHeader', CodingBarLength, 0.4, 'QuadIn')
						doTweenX('MoveCodeName', 'CodeName', CodingBarLength, 0.4, 'QuadIn')
						doTweenX('MoveCodeIcon', 'CodeIcon', screenWidth + CodingBarLength - 200, 0.4, 'QuintIn')

					elseif tag == '2' then
						doTweenX('MoveArtBG', 'ArtBG', screenWidth, 0.25, 'QuintIn')
						doTweenX('MoveArtFG', 'ArtFG', screenWidth, 0.4, 'QuadIn')
						doTweenX('MoveArtHeader', 'ArtHeader', ArtistBarLength, 0.4, 'QuadIn')
						doTweenX('MoveArtName', 'ArtName', ArtistBarLength, 0.4, 'QuadIn')
						doTweenX('MoveArtIcon', 'ArtIcon', screenWidth + ArtistBarLength - 200, 0.4, 'QuintIn')
											
					elseif tag == '3' then
						doTweenX('MoveMusicBG', 'MusicBG', screenWidth, 0.25, 'QuintIn')
						doTweenX('MoveMusicFG', 'MusicFG', screenWidth, 0.4, 'QuadIn')
						doTweenX('MoveMusicHeader', 'MusicHeader', MusicianBarLength, 0.4, 'QuadIn')
						doTweenX('MoveMusicName', 'MusicName', MusicianBarLength, 0.4, 'QuadIn')
						doTweenX('MoveMusicIcon', 'MusicIcon', screenWidth + MusicianBarLength - 200, 0.4, 'QuintIn')

					elseif tag == '4' then
						doTweenX('MMoveCoverBG', 'CovertBG', screenWidth, 0.25, 'QuintIn')
						doTweenX('MoveCoverFG', 'CoverFG', screenWidth, 0.4, 'QuadIn')
						doTweenX('MoveCoverHeader', 'CoverHeader', CoverBarLength, 0.4, 'QuadIn')
						doTweenX('MoveCoverName', 'CoverName', CoverBarLength, 0.4, 'QuadIn')
						doTweenX('MoveCoverIcon', 'CoverIcon', screenWidth + CoverBarLength - 200, 0.4, 'QuintIn')
											
						runTimer('Die', 1, 1)

					elseif tag == 'Die' then

						removeLuaSprite('CodeBG')
						removeLuaSprite('ArtBG')
						removeLuaSprite('MusicBG')
						removeLuaSprite('CoverBG')
															
						removeLuaSprite('CodeFG')
						removeLuaSprite('ArtFG')
						removeLuaSprite('MusicFG')
						removeLuaSprite('CoverFG')

						removeLuaSprite('CodeIcon')
						removeLuaSprite('ArtIcon')
						removeLuaSprite('MusicIcon')
						removeLuaSprite('CoverIcon')
																
						removeLuaText('CodeHeader')
						removeLuaText('ArtHeader')
						removeLuaText('MusicHeader')
						removeLuaText('CoverHeader')
				
						removeLuaText('CodeName')
						removeLuaText('ArtName')
						removeLuaText('MusicName')
						removeLuaText('CoverName')

					end
				end
			end
		end
	end

--CENTER ALIGNMENT

	if Alignment == 'center' then

		--BackGround--
		
		--Coding
		makeLuaSprite('CodeBG', '', ((screenWidth/2)-(CodingBarLength/2)) - 10, -10 - BarThickness)
		makeGraphic('CodeBG', CodingBarLength + 20 , BarThickness + 10, CodingBackgroundBarColor)
		setObjectCamera('CodeBG', CameraType)
		addLuaSprite('CodeBG', true)
		setProperty('CodeBG.alpha', BarTransparency)

		--Art
		makeLuaSprite('ArtBG', '', ((screenWidth/2)-(ArtistBarLength/2)) - 10, -10 - BarThickness)
		makeGraphic('ArtBG', ArtistBarLength + 20, BarThickness + 10, ArtistBackgroundBarColor)
		setObjectCamera('ArtBG', CameraType)
		addLuaSprite('ArtBG', true)
		setProperty('ArtBG.alpha', BarTransparency)

		--Music
		makeLuaSprite('MusicBG', '', ((screenWidth/2)-(MusicianBarLength/2)) - 10, -10 - BarThickness)
		makeGraphic('MusicBG', MusicianBarLength + 20, BarThickness + 10, MusicianBackgroundBarColor)
		setObjectCamera('MusicBG', CameraType)
		addLuaSprite('MusicBG', true)
		setProperty('MusicBG.alpha', BarTransparency)

		--Cover
		makeLuaSprite('CoverBG', '', ((screenWidth/2)-(CoverBarLength/2)) - 10, -10 - BarThickness)
		makeGraphic('CoverBG', CoverBarLength + 20, BarThickness + 10, CoverBackgroundBarColor)
		setObjectCamera('CoverBG', CameraType)
		addLuaSprite('CoverBG', true)
		setProperty('CoverBG.alpha', BarTransparency)
		
		
		--ForeGround--

		--Coding
		makeLuaSprite('CodeFG', '', (screenWidth/2)-(CodingBarLength/2), -10 - BarThickness)
		makeGraphic('CodeFG', CodingBarLength, BarThickness, CodingForegroundBarColor)
		setObjectCamera('CodeFG', CameraType)
		addLuaSprite('CodeFG', true)
		setProperty('CodeFG.alpha', BarTransparency)


		--Art
		makeLuaSprite('ArtFG', '', (screenWidth/2)-(ArtistBarLength/2), -10 - BarThickness)
		makeGraphic('ArtFG', ArtistBarLength, BarThickness, ArtistForegroundBarColor)
		setObjectCamera('ArtFG', CameraType)
		addLuaSprite('ArtFG', true)
		setProperty('ArtFG.alpha', BarTransparency)
		
		--Music
		makeLuaSprite('MusicFG', '', (screenWidth/2)-(MusicianBarLength/2), -10 - BarThickness)
		makeGraphic('MusicFG', MusicianBarLength, BarThickness, MusicianForegroundBarColor)
		setObjectCamera('MusicFG', CameraType)
		addLuaSprite('MusicFG', true)
		setProperty('MusicFG.alpha', BarTransparency)

		--Cover
		makeLuaSprite('CoverFG', '', (screenWidth/2)-(CoverBarLength/2), -10 - BarThickness)
		makeGraphic('CoverFG', CoverBarLength, BarThickness, CoverForegroundBarColor)
		setObjectCamera('CoverFG', CameraType)
		addLuaSprite('CoverFG', true)
		setProperty('CoverFG.alpha', BarTransparency)


		--Role Headers--

		--Coding
		makeLuaText('CodeHeader', 'Coding :', 1280, 0, -10 - BarThickness)
		addLuaText('CodeHeader') 
		setTextSize('CodeHeader', HeaderSize)
		setTextAlignment('CodeHeader', 'center')
		setTextColor('CodeHeader', CoderHeaderColor)
		setTextBorder('CodeHeader', HeaderBorderThickness, CoderHeaderBorderColor)
		setTextFont('CodeHeader', FontType)
		setObjectCamera('CodeHeader', CameraType)
		setProperty('CodeHeader.alpha', WordTransparency)
		
		
		--Art
		makeLuaText('ArtHeader', 'Artist :', 1280, 0, -10 - BarThickness)
		addLuaText('ArtHeader')
		setTextSize('ArtHeader', HeaderSize)
		setTextAlignment('ArtHeader', 'center')
		setTextColor('ArtHeader', ArtistHeaderColor)
		setTextBorder('ArtHeader', HeaderBorderThickness, ArtistHeaderBorderColor)
		setTextFont('ArtHeader', FontType)
		setObjectCamera('ArtHeader', CameraType)
		setProperty('ArtHeader.alpha', WordTransparency)

		--Music
		makeLuaText('MusicHeader', 'Musician :', 1280, 0, -10 - BarThickness)
		addLuaText('MusicHeader')
		setTextSize('MusicHeader', HeaderSize)
		setTextAlignment('MusicHeader', 'center')
		setTextColor('MusicHeader', MusicianHeaderColor)
		setTextBorder('MusicHeader', HeaderBorderThickness, MusicianHeaderBorderColor)
		setTextFont('MusicHeader', FontType)
		setObjectCamera('MusicHeader', CameraType)
		setProperty('MusicHeader.alpha', WordTransparency)

		--Cover
		makeLuaText('CoverHeader', 'Cover :', 1280, 0, -10 - BarThickness)
		addLuaText('CoverHeader') 
		setTextSize('CoverHeader', HeaderSize)
		setTextAlignment('CoverHeader', 'center')
		setTextColor('CoverHeader', CoverHeaderColor)
		setTextBorder('CoverHeader', HeaderBorderThickness, CoverHeaderBorderColor)
		setTextFont('CoverHeader', FontType)
		setObjectCamera('CoverHeader', CameraType)
		setProperty('CoverHeader.alpha', WordTransparency)

		
		--Team Names--

		--Coding
		makeLuaText('CodeName', Coders, 1280, 0, -10 - BarThickness)
		addLuaText('CodeName') 
		setTextSize('CodeName', FontSize)
		setTextAlignment('CodeName', 'center')
		setTextColor('CodeName', CoderNameColor)
		setTextBorder('CodeName', FontBorderThickness, CoderNameBorderColor)
		setTextFont('CodeName', FontType)
		setObjectCamera('CodeName', CameraType)
		setProperty('CodeName.alpha', WordTransparency)	

		--Art
		makeLuaText('ArtName', Artists, 1280, 0, -10 - BarThickness)
		addLuaText('ArtName')
		setTextSize('ArtName', FontSize)
		setTextAlignment('ArtName', 'center')
		setTextColor('ArtName', ArtistNameColor)
		setTextBorder('ArtName', FontBorderThickness, ArtistNameBorderColor)
		setTextFont('ArtName', FontType)
		setObjectCamera('ArtName', CameraType)
		setProperty('ArtName.alpha', WordTransparency)

		--Music
		makeLuaText('MusicName', Musicians, 1280, 0, -10 - BarThickness)
		addLuaText('MusicName') 
		setTextSize('MusicName', FontSize)
		setTextAlignment('MusicName', 'center')
		setTextColor('MusicName', MusicianNameColor)
		setTextBorder('MusicName', FontBorderThickness, MusicianNameBorderColor)
		setTextFont('MusicName', FontType)
		setObjectCamera('MusicName', CameraType)
		setProperty('MusicName.alpha', WordTransparency)

		--Cover
		makeLuaText('CoverName', Cover, 1280, 0, -10 - BarThickness)
		addLuaText('CoverName')
		setTextSize('CoverName', FontSize)
		setTextAlignment('CoverName', 'center')
		setTextColor('CoverName', CoverNameColor)
		setTextBorder('CoverName', FontBorderThickness, CoverNameBorderColor)
		setTextFont('CoverName', FontType)
		setObjectCamera('CoverName', CameraType)
		setProperty('CoverName.alpha', WordTransparency)


		--Movement Stuff

		function onCountdownTick(counter)
		
			if counter == 3 then
				doTweenY('MoveCodeBG', 'CodeBG', 165 +- GlobalOffset, 0.25, 'QuintOut')
				doTweenY('MoveCodeFG', 'CodeFG', 170 +- GlobalOffset, 0.4, 'QuadOut')
				doTweenY('MoveCodeHeader', 'CodeHeader', (170 +- RoleHeaderOffset)+- GlobalOffset, 0.4, 'QuadOut')
				doTweenY('MoveCodeName', 'CodeName', (195 +- TeamNamesOffset)+- GlobalOffset, 0.4, 'QuadOut')


			elseif counter == 2 then
				doTweenY('MoveArtBG', 'ArtBG', (165 + (BarThickness + 10))+- GlobalOffset, 0.25, 'QuintOut')
				doTweenY('MoveArtFG', 'ArtFG', (170 + (BarThickness + 10)) +- GlobalOffset, 0.4, 'QuadOut')
				doTweenY('MoveArtHeader', 'ArtHeader', ((170 + (BarThickness + 10)) +- RoleHeaderOffset)+- GlobalOffset, 0.4, 'QuadOut')
				doTweenY('MoveArtName', 'ArtName', (195 + (BarThickness + 10) +- TeamNamesOffset)+- GlobalOffset, 0.4, 'QuadOut')
							
			elseif counter == 1 then
				doTweenY('MoveMusicBG', 'MusicBG', (165 + (2 * (BarThickness + 10))) +- GlobalOffset, 0.25, 'QuintOut')
				doTweenY('MoveMusicFG', 'MusicFG', (170 + (2 * (BarThickness + 10))) +- GlobalOffset, 0.4, 'QuadOut')
				doTweenY('MoveMusicHeader', 'MusicHeader', ((170 + (2 * (BarThickness + 10))) +- RoleHeaderOffset)+- GlobalOffset, 0.4, 'QuadOut')
				doTweenY('MoveMusicName', 'MusicName', (195 + (2 * (BarThickness + 10)) +- TeamNamesOffset)+- GlobalOffset, 0.4, 'QuadOut')
							
			elseif counter == 0 then
				doTweenY('MoveCoverBG', 'CoverBG', (165 + (3 * (BarThickness + 10))) +- GlobalOffset, 0.25, 'QuintOut')
				doTweenY('MoveCoverFG', 'CoverFG', (170 + (3 * (BarThickness + 10))) +- GlobalOffset, 0.4, 'QuadOut')
				doTweenY('MoveCoverHeader', 'CoverHeader', ((170 + (3 * (BarThickness + 10))) +- RoleHeaderOffset)+- GlobalOffset, 0.4, 'QuadOut')
				doTweenY('MoveCoverName', 'CoverName', (195 + (3 * (BarThickness + 10)) +- TeamNamesOffset)+- GlobalOffset, 0.4, 'QuadOut')

				runTimer('Kill Hehe', ScriptDuration, 1)


				function onTimerCompleted(tag, loops, loopsLeft)

					if tag == 'Kill Hehe' then

						runTimer('1', 1, 1)
						runTimer('2', 1.2, 1)
						runTimer('3', 1.4, 1)
						runTimer('4', 1.6, 1)

					elseif tag == '4' then
						doTweenY('MoveCodeBG', 'CodeBG', screenHeight, 0.25, 'QuintIn')
						doTweenY('MoveCodeFG', 'CodeFG', screenHeight, 0.4, 'QuadIn')
						doTweenY('MoveCodeHeader', 'CodeHeader', screenHeight, 0.4, 'QuadIn')
						doTweenY('MoveCodeName', 'CodeName', screenHeight, 0.4, 'QuadIn')

					elseif tag == '3' then
						doTweenY('MoveArtBG', 'ArtBG', screenHeight, 0.25, 'QuintIn')
						doTweenY('MoveArtFG', 'ArtFG', screenHeight, 0.4, 'QuadIn')
						doTweenY('MoveArtHeader', 'ArtHeader', screenHeight, 0.4, 'QuadIn')
						doTweenY('MoveArtName', 'ArtName', screenHeight, 0.4, 'QuadIn')
											
					elseif tag == '2' then
						doTweenY('MoveMusicBG', 'MusicBG', screenHeight, 0.25, 'QuintIn')
						doTweenY('MoveMusicFG', 'MusicFG', screenHeight, 0.4, 'QuadIn')
						doTweenY('MoveMusicHeader', 'MusicHeader', screenHeight, 0.4, 'QuadIn')
						doTweenY('MoveMusicName', 'MusicName', screenHeight, 0.4, 'QuadIn')

					elseif tag == '1' then
						doTweenY('MoveCoverBG', 'CoverBG', screenHeight, 0.25, 'QuintIn')
						doTweenY('MoveCoverFG', 'CoverFG', screenHeight, 0.4, 'QuadIn')
						doTweenY('MoveCoverHeader', 'CoverHeader', screenHeight, 0.4, 'QuadIn')
						doTweenY('MoveCoverName', 'CoverName', screenHeight, 0.4, 'QuadIn')
											
						runTimer('Die', 1.5, 1)

					elseif tag == 'Die' then

							removeLuaSprite('CodeBG')
							removeLuaSprite('ArtBG')
							removeLuaSprite('MusicBG')
							removeLuaSprite('CoverBG')
			 													
							removeLuaSprite('CodeFG')
							removeLuaSprite('ArtFG')
							removeLuaSprite('MusicFG')
							removeLuaSprite('CoverFG')
																	
							removeLuaText('CodeHeader')
							removeLuaText('ArtHeader')
							removeLuaText('MusicHeader')
							removeLuaText('CoverHeader')
					
							removeLuaText('CodeName')
							removeLuaText('ArtName')
							removeLuaText('MusicName')
							removeLuaText('CoverName')

					end
				end
			end
		end
	end
end
--Das a lot of writing hehe lol