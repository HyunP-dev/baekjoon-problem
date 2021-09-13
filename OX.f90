program OXQuiz
    implicit none
    integer i, j, n, score, combo;
    character(len=80) :: line;
    read *, n;
    score = 0;
    do i = 1, n
        read *, line;
        combo = 0;
        score = 0;
        do j = 1, len_trim(line) + 1
            if (line(j:j) .eq. 'O') then
                combo = combo + 1;
                score = score + combo;
            else
                combo = 0;
            end if
        end do
        write (*, '(I0)'), score
    end do
end program OXQuiz