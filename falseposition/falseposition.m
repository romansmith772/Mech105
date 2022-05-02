function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
oldxr=100000;
iter=1;

%es=.000001;
inerr=1e-10;
%maxit=200;
if nargin<3  
    error('min 3 args')
end 
%if nargin>3 
    es=.0001;
    maxit=200;
%end

%if func(xl)*func(xu)>0
 %   error('no sign change')
%end

while (es>inerr && iter<maxit)
    
    xr=xu-(func(xu)*(xl-xu)/(func(xl)-func(xu)));
    
   
        test=func(xl)*func(xr);
        if test<0,
            xu = xr;
        elseif test>0
           xl = xr;
        else
            fprintf('%ITS THE ROOT',xr);
            break 
        end
        es=abs((oldxr-xr)/(oldxr));
        oldxr=xr;
        iter=iter+1;
end
fprintf('the root is %f \n',xr)
fprintf('number of iterations %f \n', iter)
fprintf('error %f \n',es)
root=xr
fx=func(root)
ea=es
iter=iter





end
