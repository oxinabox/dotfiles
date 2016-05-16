
function add_to_path(directory)
	if isdir(directory)
		push!(LOAD_PATH, directory)
	end
end
	
add_to_path("/mnt_volume/phd/prototypes/SenseSplittingWord2Vec/src/")
add_to_path("/mnt/phd/prototypes/SenseSplittingWord2Vec/src/")
