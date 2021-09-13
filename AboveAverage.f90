program AboveAverage
    implicit none
    integer i, j, n, size, m, pn;
    integer, dimension(:), allocatable :: scores
    
    read *, n;
    do i = 1, n
        read *, size, scores;
        allocate(scores(size));
        m = sum(scores) / size;
        pn = 0;
        do j = 1, size
            if (scores(j) .gt. m) then
                pn = pn + 1;
            end if
        end do
        write (*, '(F0.3, A)') real(pn) / size * 100, '%';
        deallocate(scores); 
    end do
end program AboveAverage