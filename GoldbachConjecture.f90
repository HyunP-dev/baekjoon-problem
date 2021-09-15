program goldbach
    implicit none
    integer :: i, t, n;

    read *, t;
    
    do i = 1, t
        read *, n;
        call print_result(n);
    end do
end program goldbach

subroutine print_result(n)
    implicit none
    integer, intent(in) :: n;
    integer :: i;
    logical :: isprime;

    do i = n / 2, n - 2
        if (isprime(i) .and. isprime(n-i)) then
            write(*, '(I0, A, I0)') n - i, " ", i;
            exit;
        end if
    end do
end subroutine print_result

logical function isprime(n)
    integer :: i;
    isprime = .true.;
    do i = 2, int(sqrt(real(n)))
        if (mod(n, i) .eq. 0) then
            isprime = .false.;
            exit;
        end if
    end do
end function

