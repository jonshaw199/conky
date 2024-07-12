function conky_list_procs(num_procs)
	local result = "${color2}Name${goto 170}      PID${goto 250}CPU%${goto 315}MEM%\n"
	for i = 1,num_procs do
		result = result .. "$color1${top name " .. i .. "}${goto 170}${top pid " .. i .. "}${goto 250}${top cpu " .. i .. "}${goto 315}${top mem " .. i .. "}\n"
	end
	return conky_parse(result)
end
