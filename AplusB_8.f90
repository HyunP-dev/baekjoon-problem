program AplusB
    implicit none
    integer a, b, number, i
    read *, number
    do i = 1, number
        read *, a, b;
        write (*, '(A, I0, A, I0, A, I0, A, I0)') "Case #", i, ": ", a, " + ", b, " = ", a + b;
    end do
end program AplusB