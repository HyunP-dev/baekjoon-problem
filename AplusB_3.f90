program AplusB
    implicit none
    integer a, b, number, i
    read *, number
    do i = 1, number
        read *, a, b;
        write (*, '(I0)') a + b
    end do
end program AplusB