function [p,flag] = fixedpoint(fun,p0,tol,maxIt)

n = 1; flag = 1; % Initialization

disp('Fixed Point Iteration')
disp('--------------------------------')
disp(' n   p              f(p_n)')
disp('--------------------------------')
fprintf('%2d  % .9f   % .9f \n',[n-1,p0,fun(p0)]) % printing output

while n <= maxIt
    p = fun(p0);
    fprintf('%2d  % .9f   % .9f \n',[n,p,fun(p)]) % printing output
    if abs(p-p0) < tol
        flag = 0; % flag down, the result is reliable 
        break;
    else
        n = n+1;
        p0 = p;
    end
end

