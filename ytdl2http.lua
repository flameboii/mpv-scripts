mp.add_hook("on_load_fail", 9, function()
	url = mp.get_property("path")
	if (string.find(url, "ytdl://") == 1) then
		url = string.gsub(url, "ytdl://", "http://")
		mp.set_property("path", url)
		mp.commandv("loadfile", url, "replace")
	end
end)