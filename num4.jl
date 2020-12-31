include("robot_library.jl")

function mark_ladder(r)
    num_steps = through_rectangles_into_angle(r, (Down, Left))

    cells_to_mark = mark_and_enumerate_if_possible!(r, Right) - 1
    while isborder(r, Up) == false
        movements!(r, Left)
        move!(r, Up)
        putmarkers!(r, Right, cells_to_mark)
        cells_to_mark -= 1
    end

    through_rectangles_into_angle(r, (Down, Left))
    movements!(r, (Up, Right), reverse(num_steps))
end

