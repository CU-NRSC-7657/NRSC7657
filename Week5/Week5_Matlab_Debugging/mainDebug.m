function mainDebug()
    a = 3;
    b = 5;


    [s, sq] = debugFunEx1(a, b);
    
    if sign(s) == -1
        error('Should be positive')
    end

    fprintf('Sum: %d, Square of sum: %d\n', s, sq);

end