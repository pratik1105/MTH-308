limit=14;
for n=2:limit
    H=zeros(n,n);
    for i=1:n
        for j=1:n
            H(i,j)=1/(i+j-1);
        end
    end
    x=ones(n,1);
    b=H*x;
    xhat=GaussElimination(H,b);
    r=b-H*xhat;
    deltax=xhat-x;
    disp(LinfNorm(r));
    disp(LinfNorm(deltax));
    disp(ConditionNmber(H));
end
