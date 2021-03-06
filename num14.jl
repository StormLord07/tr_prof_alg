include("../roblib.jl")

function cross_marks(r::Robot)
    for side in (Up, Left, Down, Right)
        num_steps = mark_and_enumerate_if_possible!(r, side)
        movements_if_possible!(r, inverse(side), num_steps)
    end
end