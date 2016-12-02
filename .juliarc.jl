#ENV["PYTHON"]=""
function add_to_path(directory)
	if isdir(directory)
		push!(LOAD_PATH, directory)
	end
end

