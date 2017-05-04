% the script file for testing the code
% the curve
X = @(t) X(t); % function description for X, e.g., X = @(t) 2*cos(2*pi*t)
Y = @(t) Y(t); % function description for Y, e.g., Y = @(t) 3*sin(2*pi*t)
dXdt = @(t) X'(t); % derivative for X(t), e.g., X = @(t) -4*pi*sin(2*pi*t)
dYdt = @(t) Y'(t); % derivative for Y(t), e.g., Y = @(t) 6*pi*cos(2*pi*t)
% point to be projected
x0 = xValue; % the value for x0 goes here
y0 = yValue; % the value for y0 goes here
% desired accuracy
eps = epsValue; % an epsilon specifying desired absolute error
% in the solution
tic;    
tc = orthoProjectionOnCurve(x0, y0, X, Y, dXdt, dYdt, eps);
toc;

[X(tc) Y(tc)]