function epic_path(p)
	return path.join(g.program, p)
end


function epic_list(p)
	return list(epic_path(p))
end


-- Source: https://docs.python.org/2/library/functions.html#map
function map(fn, tab, ...)

end


function get_width()
	local width, _ = term.getSize()
	return width
end


function get_height()
	local _, height = term.getSize()
	return height
end