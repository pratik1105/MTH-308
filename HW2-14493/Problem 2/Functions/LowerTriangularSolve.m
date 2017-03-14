function x = LowerTriangularSolve(A,b)
    N=size(A,1);
    x=zeros(N,1);
    x(1)=(1/A(1,1))*b(1);
    for n=2:N
        x(n)=(1/A(n,n))*(b(n)-A(n,1:n-1)*x(1:n-1));
    end
end