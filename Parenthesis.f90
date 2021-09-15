program Parenthesis
    implicit none
    integer :: stack_contents_size;
    integer :: stack_size;
    character (len=)
end program Parenthesis

type stack
    integer :: size
    character, dimension(:), allocatable :: datas
end type

subroutine initiate(s, size)
    s%size = 0;
    allocate(s%datas(size));
end subroutine

character function peak(s)
    peak = s(size)
end function