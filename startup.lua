function round(val, decimal)
  if (decimal) then
    return math.floor( (val * 10^decimal)) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
  
end
function getsize(size)
	local s =  size/(1024*1024*1024*1024)
	if s >= 1 then
		return round(s,2).." TBs"
	else
		s = s*1024
	end
	if s >= 1 then
		return round(s,2).." GBs"
	else
		s = s*1024
	end
	if s >= 1 then
		return round(s,2).." MBs"
	else
		s = s*1024	
		return round(s,2).." Bytes"
	end
	return round(s,2).." Bytes"

end

function gettime(tm)
	tme = tm/(24*60*60)
	days = math.floor(tme)
	hours = math.floor((tme-days)*24)
	minutes = math.floor(((tme-days)*24-hours)*60)
	final = ""
	if days > 0 then 
		final = final..days.." Day(s) "
	end
	if hours > 0 then 
		final = final..hours.." Hours "
	end
	if minutes > 0 then 
		final = final..minutes.." Minutes "
	end
	return final
end

function UserConnected(user,data)
		
	Core.GetUserAllData(user)
	------User Info --------
	unick = user.sNick
	uip= user.sIp
	usize = getsize(user.iShareSize)
	----- Hub Info ---------
	huptime = gettime(Core.GetUpTime())
	
	husers = Core.GetUsersCount()
	hsize = getsize(Core.GetCurrentSharedSize()) 
	-------------------------
	m =" ASCII Art coming soon.. \n \n Welcome to the land of Tamriel ! "
	
	x = "\n\n #########################################################################################"
	x = x.."\n                                ---------------- HUB INFO ------------"
	x = x.."\n                                 Hub Uptime             : "..huptime
	x = x.."\n                                 Current Online Users : "..husers     
	x = x.."\n                                 Total Hub Share       : "..hsize
	x = x.."\n                                 -------------------------------------------------"
	x = x.."\n                                ---------------- YOUR INFO ------------"
	x = x.."\n                                 Your Nick             : "..unick
	x = x.."\n                                 Your IP               : "..user.sIP
	x = x.."\n                                 Your Share            : "..usize
	x = x.."\n ##########################################################################################"
	
	y= "\n\nblah.."
	y=y.."\n Commands available: \n"
	y=y.."\n +lydia/+l  +skyrim/+s +hublist"
	Core.SendToUser(user,m..x..y)
	
end

OpConnected = UserConnected

function ChatArrival(user,data)

end