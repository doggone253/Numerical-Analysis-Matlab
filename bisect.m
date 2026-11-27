function [p,flag] = bisect(fun,a,b,tol,maxIt)
%% This is a more robust version of Bisection Method than bisect1.m

flag = 1; % Use a flag to tell if the output is reliable
if fun(a)*fun(b) > 0 % Check f(a) and f(b) have different sign
    error('f(a) and f(b) must have different signs');
end

disp('Bisection Methods')
disp('--------------------------------------------------------------')
disp(' n    a_n            b_n            p_n            f(p_n)')
disp('--------------------------------------------------------------')

for n = 1:maxIt
    p = (a+b)/2;
    FA = fun(a);
    FP = fun(p);    
    fprintf('%2d   % .9f   % .9f   % .9f   % .9f\n',n,a,b,p,fun(p));
    if abs(FP) <= 10^(-15) || (b-a)/2 < tol 
        flag = 0; % flag down, the result is reliable.
        break; % Break out the for loop.
    else
        if FA*FP > 0
            a = p;
        else
            b = p;
        end
    end    
end