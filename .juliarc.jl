
if VERSION < v"0.7-"
    @schedule begin
        sleep(0.1)
        @eval using Revise
    end
end
