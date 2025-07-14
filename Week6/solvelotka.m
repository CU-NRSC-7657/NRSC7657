function [preypeaks,predatorpeaks] = solvelotka(t0, tfinal, y0)
    [~,y] = ode23(@lotka,[t0 tfinal],y0);
    
    preypeaks = calculatepeaks(y(:,1));
    predatorpeaks = calculatepeaks(y(:,2));
    
end

function peaks = calculatepeaks(A)
    [TF,P] = islocalmax(A);
    peaks = P(TF);
end