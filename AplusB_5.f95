program AplusB
    implicit none
    integer a, b;
    do
        read *, a, b;
        if (a .eq. 0 .and. b .eq. 0) then 
            exit
        else
            write (*, '(I0)') a + b;
        end if
    end do
end program AplusB