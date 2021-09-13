program print_n
    implicit none
    integer i, n;
    read *, n;
    do i = n, 1, -1
        write(*, '(I0)') i;
    end do
end program print_n