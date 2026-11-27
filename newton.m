function [p,flag] = newton(fun,Dfun,p0,tol,maxIt)

n = 0; flag = 1; % Initializaiton

disp('-------------------------------------')
disp('         Newton Method         ')
disp('-------------------------------------')
disp(' n    p_n                f(p_n)')
disp('-------------------------------------')
fprintf('%2d   %.12f   % .12f \n',[n,p0,fun(p0)])

while n <= maxIt
   p = p0 - fun(p0)/Dfun(p0); 
   if abs(p-p0) < tol
        flag = 0; break; 
   else
       n = n+1; 
       p0 = p;
   end
   fprintf('%2d   %.12f   % .12f \n',[n,p,fun(p)])
end


    