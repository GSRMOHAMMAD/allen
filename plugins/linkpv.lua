 	--pluginlua
	do
	
	function run(msg, matches)
	if not is_momod(msg) then
	return "Only For Mods !"
	end
	local data = load_data(_config.moderation.data)
	local group_link = data[tostring(msg.to.id)]['settings']['set_link']
	if not group_link then
	return "Create Link, First"
	end
	local text = "Group Link For : "..msg.to.id.."\n"..group_link
	send_large_msg('user#id'..msg.from.id, text, ok_cb, false)
	return "Link Sent To Your Pv"
	end
	
	return {
	patterns = {
	"^[/#!]([Ll]inkpv)$"
	},
	run = run
	}
	
	end
