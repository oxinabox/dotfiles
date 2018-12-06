

try
    @eval using Revise
catch err
    @warn "Error starting Revise" exception=err
end
