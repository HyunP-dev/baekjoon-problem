program add
    use iso_fortran_env
    integer, parameter :: verylong = selected_int_kind(32)
    integer(kind=int64) a, b;
    read *, a, b;
    write (*, '(I0)') a+b;
end program