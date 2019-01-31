if Base.find_package("OhMyREPL") !== nothing
    using OhMyREPL
end

atreplinit() do repl
    try
        @eval using Revise
        @async Revise.wait_steal_repl_backend()
    catch err
        println("Error starting Revise $err")
    end
    
    try
        @eval using Rebugger
    catch err
        println("Error starting Rebugger $err")
    end
end


#==
# Update all packages, but do so in a worker process
using Distributed: Distributed
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
