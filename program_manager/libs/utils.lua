function epic_path(p)
	return path.join("ASCIIO", p) -- TODO: Don't hardcode "ASCIIO" here
end


function epic_list(p)
	return list(epic_path(p))
end