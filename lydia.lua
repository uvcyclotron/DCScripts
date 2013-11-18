Tab={
	Bot = "[Lydia-Bot]",	
	BotReg = true,	
	BotDesc = "She's in training stage..",	
	BotMail = "",	
	BotKey = true,
	OpNick = "HopliteIX",
}
curr_users={}
l_msgs={
" Long life to you ,Thane!",
" I'm your sword and shield.",
" Honor to you, my Thane.",
" I am sworn to protect you.",
" Honored to see you, my Thane.",
" What's the hurry?",
" Skyrim belongs to the Nords!"
}

ub_msgs={
"magnet:?xt=urn:tree:tiger:5327XLY4TLFFABITQXA66K5LDY2ZS7MJKW6O77Y&xl=36316081&dn=The+Elder+Scrolls+V+Skyrim_+Dragonborn+-+Official+Trailer+%5BHopliteIX%5D.mp4",
"magnet:?xt=urn:tree:tiger:HLY3D36Y3QZBNNOY364QAP27GBIHLQQ2ZKG7YZQ&xl=41695309&dn=The+Elder+Scrolls+V+Skyrim_+Hearthfire+-+Official+Trailer+%5BHopliteIX%5D.mp4",
"magnet:?xt=urn:tree:tiger:4LV3NF3U3V473IBDUKHKCS3OKRBXHGO4GDERKFY&xl=194121231&dn=Making+of+The+Elder+Scrolls+V_+Skyrim%2C+Behind+The+Wall%2C+Full+video+%5BHopliteIX%5D.mp4",
"magnet:?xt=urn:tree:tiger:ZHXDB6WCOXJCNX3YU6FVPB6N2VRWCLPYTRVPOGI&xl=47526071&dn=Malukah-%E2%80%AAThe+Dragonborn+Comes+-+Skyrim+Bard+Song+and+Main+Theme+Female+Cover%E2%80%AC+%5BHopliteIX%5D.mp4",
"magnet:?xt=urn:tree:tiger:KBMNBNUEPHK3TAUIHGBULXB7A2YP6QX4PKO5X5I&xl=123765317&dn=Skyrim+-+All+Shouts+%5BHopliteIX%5D.flv",
"magnet:?xt=urn:tree:tiger:JKS6KXULCJ7S7AJDNVUOGHENSZRFR26DW6DDSTI&xl=68816578&dn=Skyrim-+All+Master+Spells+%5BHopliteIX%5D.flv",
"magnet:?xt=urn:tree:tiger:QCNULY2UJXGR2EK54I5FZXY7ZAPAQCXQHTCFONI&xl=62809367&dn=SKYRIM+-+Dragon+Priest+Mask+Location+Guide+%5BHopliteIX%5D.flv"
}


function getSkyMsg(ub_msgs)
	--x = math.random(table.getn(l_msgs))
	y="\n "
	i=1
		for i = 1,table.getn(ub_msgs),1 do
			y = y..ub_msgs[i].."\n"
		end
	return y
end

function getMsg(l_msgs)
	x = math.random(table.getn(l_msgs))
	return l_msgs[x]
end


function ChatArrival(user,data)
	local _,_,msg = data:find( "%b<> (.+)")
	local _,_,cmd = data:find( "^%b<> (%p%a+)")
	local _,_,arg = data:find( "^%b<> %p%a+ (%S+)|")
	
	if cmd and (cmd=="+l" or cmd=="+lydia") then
		Core.SendToNick(user.sNick,"<"..Tab.Bot..">"..getMsg(l_msgs))
	end
	--if cmd and (cmd=="+java" or cmd=="+j") then
	--	Core.SendToNick(user.sNick,"<"..Tab.Bot.."> Stop using DC! and go study some Java!! You worthless creature! Learn something from the mighty Dovah-kiin ! ")
	--end
	if cmd and cmd=="+hublist" then
		Core.SendToNick(user.sNick,"<"..Tab.Bot..">".." \n A static list of hubs running on DC on <9.12.12, 21.30>           \n Join     dchub://172.17.9.69         ALCHEMY            \n Join     dchub://172.16.9.190         r3v3ng3 ka aDda             \nJoin     dchub://172.16.9.185         Name not resolved             \nJoin     dchub://172.16.12.39         DeZire             \nJoin     dchub://172.16.15.147         Gotham Central             \nJoin     dchub://172.17.1.84         CASINO             \nJoin     dchub://172.17.1.117         The Heavenly Abode of Football             \nJoin     dchub://172.17.2.47         Planet Nirn\n")
	end
	
	if cmd and (cmd=="+skyrim" or cmd=="+s") then
		Core.SendToUser(user,"\n "..getSkyMsg(ub_msgs))
	end
end