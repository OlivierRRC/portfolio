pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
x=8 y=8 lst=0 snk={}

function _init()
	rndfood()
	grow()
end

function _update()
	input()
	slowupdt()
end

function _draw()
	cls(1)
	rndrsnk()
	rndrfood()
end
-->8
function input()
	if(btn(⬅️))then lst = 0 end
	if(btn(➡️))then lst = 1 end
	if(btn(⬆️))then lst = 2 end
	if(btn(⬇️))then lst = 3 end
end

function move()
	if(lst==0)then y-=1 end
	if(lst==1)then y+=1 end
	if(lst==2)then x-=1 end
	if(lst==3)then x+=1 end
	x = x%16
	y = y%16
end
-->8
t=0 spd=5
function slowupdt()
	if(t%(30/spd)==0) then
		move()
		updtsnk()
		eatfood()
	end
	t+=1
end

function ps (s,y,x,c)
	print(s,x*8, y*8, c)
end
-->8
function rndrsnk()
	for i=1, #snk do
		ps("█",snk[i][1],snk[i][2],3)
	end
end

function updtsnk()
	lx=snk[#snk][1]
	ly=snk[#snk][2]
	for i=#snk,2,-1 do
		snk[i] = snk[i-1]
	end
	snk[1] = {x,y}
end

function grow()
	snk[#snk+1] = {lx,ly}
end
-->8
fx=0 fy=0
function rndfood()
	fx = flr(rnd()*16)
	fy = flr(rnd()*16)
end

function rndrfood()
	ps("●",fx,fy,8)
end

function eatfood()
	if(x==fx and y==fy) then
		rndfood()
		grow()
	end
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
