function [xgrid, fgrid] = discreteData(nGrid, a, b, f)
    xgrid = zeros(1,nGrid);
    fgrid = zeros(1,nGrid);
    for i=1:nGrid
        xgrid(i) = ((b+a)/2) + ((b-a)/2)*(cos(pi*((i-1)/(nGrid-1))));
        fgrid(i) = f(xgrid(i));
    end
    %fgrid=f(xgrid);
    %xgrid(1)=a;
    %fgrid(1)=f(a);
    %xgrid(nGrid)=b;
    %fgrid(nGrid)=f(b);
end