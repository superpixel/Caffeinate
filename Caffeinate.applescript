on run
	set choosen_time to choose from list Â
		{"30 minutes", "1 hour", "2 hours"} with title "Caffeninate" with prompt Â
		"Keep this mac awake for:" default items Â
		{"1 hour"} without multiple selections allowed
	if choosen_time contains "30 minutes" then
		do shell script "/usr/bin/caffeinate -s -t 1800 &> /dev/null &"
	else if choosen_time contains "1 hour" then
		do shell script "/usr/bin/caffeinate -s -t 3600 &> /dev/null &"
	else if choosen_time contains "2 hours" then
		do shell script "/usr/bin/caffeinate -s -t 7200 &> /dev/null &"
	end if
end run