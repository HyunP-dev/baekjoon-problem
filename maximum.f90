program maximum
    integer, dimension(9) :: arr;
    do i = 1, 9
        read *, arr(i)
    end do
    write(*, '(I0)') maxval(arr);
    write(*, '(I0)') maxloc(arr);
end program maximum