function x = SpecialLowerTriangularSolve(A)
    N=size(A,1);
    x=zeros(N,1);
    x(1)=(1/A(1,1))*(1);
    for n=2:N
        temp1=(1/A(n,n))*(1-(A(n,1:n-1)*x(1:n-1)));
        temp2=(1/A(n,n))*(-1-(A(n,1:n-1)*x(1:n-1)));
        if(abs(temp1)>abs(temp2))
            x(n)=temp1;
        else
            x(n)=temp2;
        end
    end
end