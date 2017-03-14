function [sign,logDet] = A2q5(A)
    [L,U,P]=lu(A);
    sign = det(P);
    logDet=0;
    n=size(A,1);
    for i=1:n
        logDet=logDet+log(abs(U(i,i)));
    end
end
