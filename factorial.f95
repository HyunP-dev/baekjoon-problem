program FactorialCalculator
    integer :: n, factorial;
    read *, n;
    write(*, '("", I0)')  factorial(n);
end program FactorialCalculator

recursive integer function factorial(x) result(y)
    implicit none;    
    integer, intent(in) :: x;
    if (x < 2) then
        y = 1;
    else
        y = x * factorial(x-1);
    end if
end function factorial