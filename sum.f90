program sum
    implicit none
    integer n;
    read *, n;
    write (*, '(i0)') n*(n+1)/2
end program sum