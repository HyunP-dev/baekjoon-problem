program less_then_x
    implicit none
    integer, dimension(:), allocatable :: seq;
    integer size, x, i;
    read *, size, x;
    allocate(seq(size));
    read *, seq;
    do i = 1, size
        if (seq(i) .lt. x) then
            write (*, '(I0,$)') seq(i);
            if (i .ne. size) then
                write (*, '(A,$)') ' ';
            end if
        end if
    end do
end program less_then_x