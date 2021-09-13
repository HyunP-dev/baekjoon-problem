program recursive_factorial
    implicit none
    integer :: x, factorial;
    read *, x;
    write (*, '(I0)') factorial(x);
end program recursive_factorial

recursive integer function factorial(x) result(result)
    integer :: x;
    if (x .lt. 2) then
        result = 1;
    else
        result = x * factorial(x-1);
    end if
end function