function answer = Polyrec(x,n)
    answer=0.0;
    coeff=zeros(1,2*n+2);

    for i=1:2*n+2
        if mod(i,4)==1
            coeff(i)=1/i;
        end
        if mod(i,4)==3
            coeff(i)=-1/i;
        end
    end

    for i= 2*n+1:-1:1
        answer=x*(coeff(i)+answer);
    end
end