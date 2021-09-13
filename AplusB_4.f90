program AplusB
    implicit none
    integer a, b, iostat;
    do
        read (*, *, IOSTAT=iostat), a, b;
        if (iostat < 0) then
            exit
        end if
        write (*, '(I0)') a + b;
    end do
end program AplusB