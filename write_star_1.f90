program write_star
    implicit none
    integer i, j, height;
    read *, height;
    do i = 1, height
        do j = 1, i
            write(*, '(a,$)') '*';
        end do
        write(*, *);
    end do
end program write_star