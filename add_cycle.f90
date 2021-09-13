program add_cycle
    implicit none
    integer n, left, right, cycles, new, sum, n0;
    cycles = 0;
    read *, n;
    n0 = n;
    do
        cycles = cycles + 1;
        right = mod(n, 10);
        left = n / 10;
        sum = left + right;
        new = right * 10 + mod(sum, 10);
        if (new .eq. n0) then
            exit;
        end if
        n = new;
    end do
    write(*, '(I0)') cycles;
end program add_cycle