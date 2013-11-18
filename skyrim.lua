Tab={
	Bot = "[Lydia-Bot]",	
	BotReg = true,	
	BotDesc = "Skyrim uploads list bot",	
	BotMail = "",	
	BotKey = true,
	OpNick = "HopliteIX",
}
curr_users={}
ub_msgs={
"magnet:?xt=urn:tree:tiger:5327XLY4TLFFABITQXA66K5LDY2ZS7MJKW6O77Y&xl=36316081&dn=The+Elder+Scrolls+V+Skyrim_+Dragonborn+-+Official+Trailer+%5BHopliteIX%5D.mp4",
"magnet:?xt=urn:tree:tiger:HLY3D36Y3QZBNNOY364QAP27GBIHLQQ2ZKG7YZQ&xl=41695309&dn=The+Elder+Scrolls+V+Skyrim_+Hearthfire+-+Official+Trailer+%5BHopliteIX%5D.mp4",
"magnet:?xt=urn:tree:tiger:4LV3NF3U3V473IBDUKHKCS3OKRBXHGO4GDERKFY&xl=194121231&dn=Making+of+The+Elder+Scrolls+V_+Skyrim%2C+Behind+The+Wall%2C+Full+video+%5BHopliteIX%5D.mp4",
"magnet:?xt=urn:tree:tiger:ZHXDB6WCOXJCNX3YU6FVPB6N2VRWCLPYTRVPOGI&xl=47526071&dn=Malukah-%E2%80%AAThe+Dragonborn+Comes+-+Skyrim+Bard+Song+and+Main+Theme+Female+Cover%E2%80%AC+%5BHopliteIX%5D.mp4",
"magnet:?xt=urn:tree:tiger:KBMNBNUEPHK3TAUIHGBULXB7A2YP6QX4PKO5X5I&xl=123765317&dn=Skyrim+-+All+Shouts+%5BHopliteIX%5D.flv",
"magnet:?xt=urn:tree:tiger:JKS6KXULCJ7S7AJDNVUOGHENSZRFR26DW6DDSTI&xl=68816578&dn=Skyrim-+All+Master+Spells+%5BHopliteIX%5D.flv",
"magnet:?xt=urn:tree:tiger:QCNULY2UJXGR2EK54I5FZXY7ZAPAQCXQHTCFONI&xl=62809367&dn=SKYRIM+-+Dragon+Priest+Mask+Location+Guide+%5BHopliteIX%5D.flv"
}

function ChatArrival(user,data)
	local _,_,msg = data:find( "%b<> (.+)")
	local _,_,cmd = data:find( "^%b<> (%p%a+)")
	local _,_,arg = data:find( "^%b<> %p%a+ (%S+)|")
	
	if cmd and cmd=="+skyrim" then
		Core.SendToNick(user.sNick,"<"..Tab.Bot..">"..getMsg(ub_msgs))
	end
end

function getMsg(ub_msgs)
	--x = math.random(table.getn(l_msgs))
	y=""
	for x=0,table.getn(ub_msgs),1 do
	y=y..ub_msgs[x].."\n"
	end
	return y
end
