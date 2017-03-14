%this function does not use pivoting.
function  [L,U] = LU_Decomposition(A)
    [m,n]=size(A);
    L=zeros(n,n);
    U=zeros(n,n);
    for i=1:n
        L(i,i)=1;
    end
    
    for k=1:n
        U(k,k)=A(k,k);
        for i=k+1:n
            L(i,k)=A(i,k)/U(k,k);
            U(k,i)=A(k,i);
        end
        
        for i=k+1:n
            for j=k+1:n
                A(i,j)=A(i,j)-L(i,k)*U(k,j);
            end
        end
    end
end