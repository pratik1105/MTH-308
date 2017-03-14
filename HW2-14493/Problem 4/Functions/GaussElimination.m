function x = GaussElimination(A,b)
    [L,U]=LU_Decomposition(A);
    c=LowerTriangularSolve(L,b);
    x=UpperTriangularSolve(U,c);
end
