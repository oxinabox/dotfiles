# Make it only update the Registry 1 in 4 new julia sessions
using Pkg: Pkg
Pkg.UPDATED_REGISTRY_THIS_SESSION[] = true


# Setup Revise.jl
atreplinit() do repl
    try
        @eval using Revise
        @async Revise.wait_steal_repl_backend()
    catch err
        println("Error starting Revise $err")
    end
end
