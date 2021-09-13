program NNumber
    implicit none
    integer i, A, B, C, T;
    integer, dimension(10) :: numbers = 0;
    read *, A, B, C;
    T = A * B * C;
    do
        numbers(mod(T, 10) + 1) = numbers(mod(T, 10) + 1) + 1;
        T = T / 10;
        if (T < 1) then
            exit;
        end if
    end do
    do i = 1, 10
        write(*, '(I0)') numbers(i);
    end do
end program NNumber