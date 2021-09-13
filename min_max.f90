program min_max
    implicit none
    integer size;
    integer, dimension(:), allocatable :: arr;
    read *, size;
    allocate(arr(size));
    read *, arr;
    write(*, '(I0,A,I0)') minval(arr, size), ' ', maxval(arr, size);
end program min_max