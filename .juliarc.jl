
function add_to_path(directory)
	if isdir(directory)
		push!(LOAD_PATH, directory)
	end
end
	
add_to_path("/mnt_volume/phd/prototypes/SenseSplittingWord2Vec/src/")
add_to_path("/mnt/phd/prototypes/SenseSplittingWord2Vec/src/")

function setup_pimpmyrepl()
    if isdir(Pkg.dir("PimpMyREPL"))
        @async while true
            if isdefined(Base, :active_repl)
                sleep(0.05)
                @eval using PimpMyREPL
                break
            else
                sleep(0.1)
            end
        end
    else
        warn("PimpMyREPL not installed")
    end
end

#setup_pimpmyrepl()
