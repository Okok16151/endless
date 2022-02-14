local allowCountdown = false
function onStartCountdown()
if not allowCountdown and isStoryMode and not seenCutscene then
setProperty('camGame.visible', false)
setProperty('camHUD.visible', false)
runTimer('lowEnd',1,1)

allowCountdown = true;
return Function_Stop;
end
setProperty('camGame.visible', true)
setProperty('camHUD.visible', true)

return Fuction_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

if tag == 'lowEnd' then
startVideo('cutscene1');
end

end


local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 420.95;
local yy = 313;
local xx2 = 952.9;
local yy2 = 350;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()



	-- background shit

	
	makeLuaSprite('snowstreet', 'snowstreet', -420.69, -258.1);
	setLuaSpriteScrollFactor('snowstreet', 0.9, 0.9);

	makeLuaSprite('snowbg', 'snowbg', -420.69, -258.1);
	setLuaSpriteScrollFactor('snowbg', 0.7, 0.7);

	makeLuaSprite('water', 'water', -420.69, -258.1);
	setLuaSpriteScrollFactor('water', 0.4, 0.6);

	makeLuaSprite('iceback', 'iceback', -420.69, -258.1);
	setLuaSpriteScrollFactor('iceback', 0.5, 0.5);

	makeLuaSprite('sky', 'sky', -420.69, -258.1);
	setLuaSpriteScrollFactor('sky', 0, 0);

	makeLuaSprite('sonicdoor', 'sonicdoor', 120.69, -358.1);
	setLuaSpriteScrollFactor('sonicdoor', 1.5, 1.5);


	makeAnimatedLuaSprite('snow', 'snow', -600.69, -258.1);
	addAnimationByPrefix('snow','snow','snow',24,true);
	setLuaSpriteScrollFactor('snow', 1.5, 1.5);
	luaSpritePlayAnimation(snow, snow, false);


	addLuaSprite('sky', false);
	addLuaSprite('iceback', false);
	addLuaSprite('water', false);
	addLuaSprite('snowbg', false);
	addLuaSprite('snowstreet', false);

	addLuaSprite('snow', true);
	addLuaSprite('sonicdoor', true);
    
    xx = 320.69;
    yy = 313;
    
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
            setProperty('defaultCamZoom',1)
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

            setProperty('defaultCamZoom',1.2)
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


