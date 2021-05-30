local function draw()
	local frame_buffer = g.frame_buffer
	
	for y in g.height do
		term.setCursorPos(1, y)
		term.write(frame_buffer[y])
	end
end