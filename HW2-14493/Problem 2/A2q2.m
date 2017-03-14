A1=[10 -7 0;-3 2 6;5 -1 5];
A2=[-73 78 24;92 66 25;-80 37 10];

disp(ConditionNmber(A1));
disp(ConditionNmber(A2));
disp(CnditionNmberRandom(A1));
disp(CnditionNmberRandom(A2));

e1=[1;0;0];
e2=[0;1;0];
e3=[0;0;1];

v1=GaussElimination(A1,e1);
v2=GaussElimination(A1,e2);
v3=GaussElimination(A1,e3);

A1inverse=[v1 v2 v3];

v1=GaussElimination(A2,e1);
v2=GaussElimination(A2,e2);
v3=GaussElimination(A2,e3);

A2inverse=[v1 v2 v3];

disp(LinfNorm(A1)*LinfNorm(A1inverse));
disp(LinfNorm(A2)*LinfNorm(A2inverse));

disp(cond(A1,inf));
disp(cond(A2,inf));