program herman
    double precision :: r;
    double precision :: pi;
    pi = 4.0 * atan(1.0);
    read *, r;
    write (*, '(F0.6)') r * r * pi;
    write (*, '(F0.6)') r * r * 2;
end program