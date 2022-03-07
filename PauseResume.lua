-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

function PauseResume()
	if get("sim/time/paused") == 1 then
		set("sim/time/use_system_time", 0)
		command_once("sim/operation/pause_toggle")
	end
end

add_macro("Resume from pause using current sim time", "PauseResume()")
