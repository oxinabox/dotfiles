# Disable updating registry on `add` (still runs on `up`)
using Pkg: Pkg
Pkg.UPDATED_REGISTRY_THIS_SESSION[] = true

# use more colors for displaying Pkg conflicts
if isdefined(Pkg.Resolve, :CONFLICT_COLORS)
    append!(Pkg.Resolve.CONFLICT_COLORS,  [21:51; 55:119; 124:142; 160:184; 196:220])
end

# Setup Revise.jl
atreplinit() do repl
    try
        @eval using Revise
        @async Revise.wait_steal_repl_backend()
    catch err
        println("Error starting Revise $err")
    end
end
