program kawaiidesu
    implicit none
    integer i, result, paper;
    integer number;
    read *, number;
    result = 0;
    do i = 1, number
        read *, paper;
        if (paper .eq. 0) then
            result = result - 1;
        else
            result = result + 1;
        end if
    end do
    if (result .lt. 0) then
        write(*, '("", A)') "Junhee is not cute!";
    else
        write(*, '("", A)') "Junhee is cute!";
    end if
end program kawaiidesu