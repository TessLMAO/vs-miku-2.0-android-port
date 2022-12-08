function onCreate()

	makeLuaSprite('main', 'stage/mainstage', -202,315);
	setLuaSpriteScrollFactor('main', 1.0, 1.0);
	scaleObject('main', 1.09, 1.09);
	
	makeLuaSprite('spak', 'stage/speakers', -202,315);
	setLuaSpriteScrollFactor('spak', 1.0, 1.0);
	scaleObject('spak', 1.09, 1.09);
	
	makeLuaSprite('stadio', 'stage/stadiumback', -365,315);
	setLuaSpriteScrollFactor('stadio', 0.93, 1.0);
	scaleObject('stadio', 1.09, 1.09);
	
	makeLuaSprite('fajas', 'stage/concerttop', -235,340);
	setLuaSpriteScrollFactor('fajas', 0.82, 1.0);
	scaleObject('fajas', 1.09, 1.09);
	
	makeLuaSprite('luai', 'stage/backlight', -234,329);
	setLuaSpriteScrollFactor('luai', 0.82, 1.0);
	scaleObject('luai', 1.09, 1.09);
	
	makeLuaSprite('sky', 'stage/nightsky', -202,365);
	setLuaSpriteScrollFactor('sky', 0.82, 1.0);
	scaleObject('sky', 1.09, 1.09);
	
	makeAnimatedLuaSprite('fans', 'stage/bunch_of_simps', 10,1180);
	setLuaSpriteScrollFactor('fans', 0.82, 1.0);
	scaleObject('fans', 1.0, 1.0);

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
	addAnimationByPrefix('fans', 'Idle', 'Downer Crowd Bob', 24, true);

end

function onBeatHit()
	objectPlayAnimation('fans', 'Idle', true)
end

function onEvent(name,value1,value2)
	if name == 'cambios' then 
		
		if value1 == 'drop' then

           setProperty('drop1.alpha', 1)

        end
        
        if value1 == 'gritos' then

           playSound('Crowd', 1);

        end
        
        if value1 == 'flas' then

           setProperty('flas.alpha', 1)

     	end
        
        if value1 == 'nodrop' then

           setProperty('drop1.alpha', 0)

     	end

	end
end