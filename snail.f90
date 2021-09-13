program snail
    implicit none
    real a, b, v;
    read *, a, b, v;
    write (*, '(I0)') ceiling((v-b)/(a-b));
end program snail