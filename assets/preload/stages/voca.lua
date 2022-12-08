function onCreate()

	makeLuaSprite('main', 'voca/mainvoca', -202,315);
	setLuaSpriteScrollFactor('main', 1.0, 1.0);
	scaleObject('main', 1.09, 1.09);
	
	makeLuaSprite('spak', 'voca/speakers', -202,315);
	setLuaSpriteScrollFactor('spak', 1.0, 1.0);
	scaleObject('spak', 1.09, 1.09);
	
	makeLuaSprite('stadio', 'voca/stadiumback', -365,315);
	setLuaSpriteScrollFactor('stadio', 0.93, 1.0);
	scaleObject('stadio', 1.09, 1.09);
	
	makeLuaSprite('fajas', 'voca/concerttop', -235,340);
	setLuaSpriteScrollFactor('fajas', 0.82, 1.0);
	scaleObject('fajas', 1.09, 1.09);
	
	makeLuaSprite('luai', 'voca/backlight', -234,329);
	setLuaSpriteScrollFactor('luai', 0.82, 1.0);
	scaleObject('luai', 1.09, 1.09);
	
	makeLuaSprite('sky', 'voca/nightsky', -202,365);
	setLuaSpriteScrollFactor('sky', 0.82, 1.0);
	scaleObject('sky', 1.09, 1.09);
	
	makeAnimatedLuaSprite('fans', 'voca/crowd', -96,1135);
	setLuaSpriteScrollFactor('fans', 0.82, 1.0);
	scaleObject('fans', 1.42, 1.42);
	
	makeAnimatedLuaSprite('flas', 'voca/spotlightdance', -246,535);
	setLuaSpriteScrollFactor('flas', 0.82, 1.0);
	scaleObject('fs', 1.42, 1.42);
	
	makeLuaSprite('overlay', 'voca/hell', -490,436);
	setLuaSpriteScrollFactor('overlay', 1.0, 1.0);
	scaleObject('overlay', 2.0, 2.0);
	

	makeLuaText('watermark', "RECREATION Sion | MOD Evdial", 0, 0, 690); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark',18);
    addLuaText('watermark');
    setProperty('watermark.alpha',0.35);
    
    addLuaSprite('sky', false);
    addLuaSprite('fajas', false);
    addLuaSprite('luai', false);
	addLuaSprite('stadio', false);
	addLuaSprite('spak', false);
	addLuaSprite('main', false);
	addLuaSprite('fans', true);
	addAnimationByPrefix('fans', 'Idle', 'crowdbump', 24, true);
    addLuaSprite('overlay', true);
	addLuaSprite('flas', true);
	addAnimationByPrefix('flas', 'Idle', 'spotlightdance', 25, true);
	
	
	
	
	setProperty('flas.alpha', 0)
	setProperty('drop1.alpha', 0)

end

function onBeatHit()
	objectPlayAnimation('fans', 'Idle', true)
end

function onEvent(name,value1,value2)
	if name == 'cambios' then 
		
		if value1 == 'gritos' then

           playSound('Crowd', 1);

        end
        
        if value1 == 'flas' then

           setProperty('flas.alpha', 1)

     	end

	end
end

stepHitFuncs = {
	
	[1297] = function()
		
		if rating > 0.95 then
			setProperty('sick.alpha', 1)
			objectPlayAnimation('sick', 'Perfecto',true)
			runTimer('daRating', 1.6, 1);
		end
	end,
}

function onStepHit()
	if stepHitFuncs[curStep] then
		stepHitFuncs[curStep]()
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'daRating' then
		 --removing her to make the game run slightly better
	end
end