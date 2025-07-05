function [sumResult, squareResult] = debugFunEx1(x, y)

    sumResult    = x - y;
    
    squareResult = debugFunEx2(sumResult);

end