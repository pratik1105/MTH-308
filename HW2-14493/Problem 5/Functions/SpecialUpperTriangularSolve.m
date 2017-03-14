function x = SpecialUpperTriangularSolve(A)
    N=size(A,1);
    x=zeros(N,1);
    x(N)=(1/A(N,N))*(1);
    for n=N-1:-1:1
        x(n)= (1/A(n,n))*(1-A(n,n+1:end)*x(n+1:end));
        x(n)= max(x(n),1/A(n,n))*(-1-A(n,n+1:end)*x(n+1:end));
    end
end    