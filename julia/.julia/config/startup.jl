# Setup OhMyREPL and Revise
import Pkg
let
    pkgs = ["Revise", "OhMyREPL"]
    for pkg in pkgs
    if Base.find_package(pkg) === nothing
        Pkg.add(pkg)
    end
    end
end

using OhMyREPL

atreplinit() do repl
    try
        @eval using Revise
        @async Revise.wait_steal_repl_backend()
    catch err
        @warn "Error starting Revise" exception=err
    end
end


#==
# Update all packages, but do so in a worker process
import Distributed
let
    pkg_worker = Distributed.addprocs(1)[end]
    Distributed.remotecall(pkg_worker) do
        redirect_stdout() # silence everything, only on this worker
        Pkg.update()

        # now remove this worker and say we are done
        remotecall(1) do
            eval(quote
                Distributed.rmprocs($(pkg_worker))
                printstyled("\n Pkg.update() complete \n"; color=:light_black)
            end)
        end
    end
end
==# 
