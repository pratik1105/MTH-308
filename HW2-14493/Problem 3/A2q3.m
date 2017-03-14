for i=0:4
    n=2*i;
    e=power(10,-n);
    A=[1 1+e; 1-e 1];
    b=[1+((1+e)*e);1];
    CN=ConditionNmber(A);
    x=GaussElimination(A,b);
    relativex=abs(x(1)-1);
    relativey=abs(x(2)-e)/e;
    error=[relativex relativey];
    disp(CN);
    disp(x);
    disp(error);
end;