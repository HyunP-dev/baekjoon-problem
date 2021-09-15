program partial_sum
    implicit none
    integer :: sp, ep, size, buf, n, res;
    integer, dimension(:), allocatable :: seq;
    read *, size, n;
    allocate(seq(size));
    read *, seq;
    res = 0;
    do sp = 1, size
        buf = 0;
        do ep = sp, size
            buf = buf + seq(ep);
            if (buf .eq. n) then
                res = res + 1;
                exit;
            end if
        end do
    end do
    write (*, '(I0)') res;
end program