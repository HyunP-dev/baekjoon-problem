program fake_mean
    real, dimension(:), allocatable :: scores;
    integer :: size;
    read *, size;
    allocate(scores(size));
    read *, scores;
    write (*, '(F0.2)') (sum(scores)/size) / maxval(scores) * 100;
end program fake_mean