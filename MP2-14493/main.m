% the script file for testing the code
% the interval of approximations
a = aValue; % the value of the left end-point of the interval
b = bValue; % the value of the right end-point of the interval
% the function to be approximated
f = @(x) f(x); % function description for f, e.g., f = @(x) x.*x
% approximation grid size
nGrid = nGridValue; % size of the grid to be used for approximation
[xGrid, fGrid] = discreteData(nGrid, a, b, f);
% the number of test evaluation points
nEval = nEvalValue;
xEval = a + (b-a).*rand(1,nEval); % evaluation grid to be used for testing
tic;
exact = f(xEval);
approx = approxFunction(xEval, xGrid, fGrid);

maxExact = max(abs(exact)); % the max norm of f
maxError = max(abs(approx-exact)); % the max norm of error
toc;
maxError/maxExact