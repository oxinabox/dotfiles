import Pkg
const pkgs = ["Revise", "OhMyREPL"]
for pkg in pkgs
    if Base.find_package(pkg) === nothing
        Pkg.add(pkg)
    end
end

using Revise
using OhMyREPL
