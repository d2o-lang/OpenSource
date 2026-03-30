run_on_actor(getactors()[1], [==[
local recoil_x = 0  
local recoil_y = 0
    local old_tweenInfo_new = clonefunction(TweenInfo.new)
    hookfunction(TweenInfo.new, newcclosure(function(...)
        if debug.info(3, "n") == "recoil_function" then
            setstack(3, 5, getstack(3, 5) * recoil_x)
            setstack(3, 6, getstack(3, 6) * recoil_y)
        end
        return old_tweenInfo_new(...)
    end))
]==])
