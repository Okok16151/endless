


local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 8.15;
local yy = -1038.35;
local xx2 = 790.35;
local yy2 = 400.85;
local ofs = 70;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()



	-- background shit

	


	makeLuaSprite('blesswater', 'blesswater', 308.25, 29.8);
	setLuaSpriteScrollFactor('blesswater', 0.4, 0.7);

	makeLuaSprite('blessmountains', 'blessmountains', 108.25, -79.8);
	setLuaSpriteScrollFactor('blessmountains', 0.5, 0.5);

	makeLuaSprite('blessbg', 'blessbg', -21.7, -193.9);
	setLuaSpriteScrollFactor('blessbg', 0, 0);



	makeAnimatedLuaSprite('hillspeedy', 'hillspeedy', -794.7, -200.2);
	addAnimationByPrefix('hillspeedy','hillspeedy','hillspeedy',24,true);
	setLuaSpriteScrollFactor('hillspeedy', 0.9, 0.9);
	luaSpritePlayAnimation(hillspeedy, hillspeedy, false);





	addLuaSprite('blessbg', false);
	addLuaSprite('blessmountains', false);
	addLuaSprite('blesswater', false);
	addLuaSprite('hillspeedy', false);


    xx = 120.69;
    yy = 400;
    
end



function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.9)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',1.4)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end


