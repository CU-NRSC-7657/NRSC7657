function c = myFunction(a,b)

[a2] = newFileKey(a);
[b2] = newFileKey(b);

c = sqrt(square(a2)+square(b2));


end

function y = square(x)
y = x.^2;
end


function [outKey] = newFileKey(startKey)


outKey = NaN;
for si = 1:startKey

    tmpKey = randi(5000,1);

    if mod(tmpKey,2) == 0 && tmpKey < 100
        outKey = tmpKey;
    else

        if tmpKey > 10
            outKey = round(tmpKey/3) + 10;
        else
            outKey = tmpKey;
        end

    end


end



end