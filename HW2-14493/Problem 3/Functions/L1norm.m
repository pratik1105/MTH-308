function answer = L1norm(A)
    [m,n]=size(A);
    answer=0.0;
    for j=1:n
        temp=0.0;
        for i=1:m
            temp=temp+abs(A(i,j));
        end
        answer=max(answer,temp);
    end
end