if VERSION <= v"1.3"  # Not on master
    atreplinit() do repl
        try
            @eval using Revise
            @async Revise.wait_steal_repl_backend()
        catch err
            println("Error starting Revise $err")
        end
    end
end
