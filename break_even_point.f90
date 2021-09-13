program break_even_point
    implicit none
    real a, b, c;
    read *, a, b, c;
    if (b > c) then
        write (*, '(I0)') -1;
    else
        write (*,*) a/(c-b);
        write (*, '(I0)') ceiling(a/(c-b));
    end if 
end program break_even_point