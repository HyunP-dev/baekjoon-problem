program honeycomb
    implicit none
    integer*4 n, floor, max_room_number;
    read *, n;
    floor = 1
    do
        if (n .eq. 1) then
            write(*, '(I0)') 1;
            exit;
        end if
        if (max_room_number(floor) .lt. n .and. n .le. max_room_number(floor+1)) then
            write(*, '(I0)') floor + 1;
            exit;
        else
            floor = floor + 1;
        end if
    end do
    
end program honeycomb

recursive integer function max_room_number(floor) result(result)
    integer*4 :: floor;
    if (floor .eq. 1) then
        result = 1;
    else
        result = max_room_number(floor - 1) + 6*(floor-1);
    end if
end function
