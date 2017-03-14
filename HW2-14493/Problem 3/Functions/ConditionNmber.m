function CN = ConditionNmber(A)
    CN=0.0;
    [L,U]=LU_Decomposition(A);
    
    Utranspose=U.';
    Ltranspose=L.';

    v = SpecialLowerTriangularSolve(Utranspose);
    y = UpperTriangularSolve(Ltranspose,v);
    z=GaussElimination(A,y);
    CN=LinfNorm(A)*(LinfNorm(z)/LinfNorm(y));
end