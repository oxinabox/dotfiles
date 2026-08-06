# Disable updating registry on `add` (still runs on `up`)
using Pkg: Pkg
#Pkg.UPDATED_REGISTRY_THIS_SESSION[] = true

# use more colors for displaying Pkg conflicts
if isdefined(Pkg.Resolve, :CONFLICT_COLORS)
    append!(Pkg.Resolve.CONFLICT_COLORS,  [21:51; 55:119; 124:142; 160:184; 196:220])
end

#ENV["JULIA_PKG_SERVER"] = ""
#ENV["JULIA_PKG_USE_CLI_GIT"] = "true"
ENV["JULIA_PKG_PRESERVE_TIERED_INSTALLED"] = "true"

ENV["JULIA_NUM_PRECOMPILE_TASKS"] = "8"

# Setup Revise.jl
try
    using Revise
catch e
    @warn "Error initializing Revise" exception=e
end
