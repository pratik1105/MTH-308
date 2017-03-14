function CN = CnditionNmberRandom(A)
    n=size(A,1);
    CN=0.0;
    for i=1:5
        y=randn(n,1);
        z=GaussElimination(A,y);
        CN=max(CN,LinfNorm(A)*(LinfNorm(z)/LinfNorm(y)));
    end
end
