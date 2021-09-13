program times_table
    implicit none
    integer n, i;
    read *, n;
    do i = 1, 9
        write(*, "(I0, A, I0, A, I0)") n, " * ", i, " = ", n * i
    end do
end program times_table