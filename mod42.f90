program mod42
    integer, dimension(10) :: remainders;
    integer size, temp;
    remainders = -1;
    size = 0;
    do i = 1, 10
        read *, temp;
        temp = mod(temp, 42)
        do j = 0, size
            if (remainders(j) .eq. temp .and. j .ne. 0) then
                exit
            end if
            if (j == size) then
                remainders(j+1) = temp;
                size = size + 1;
                exit;
            end if
        end do
    end do
    write (*, '(I0)') size;
end program mod42