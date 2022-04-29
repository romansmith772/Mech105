  
%%starting errors  
%creating check vector for errors
check = x(1):x(2)-x(1):x(end);
    if (size(x,2) ~= size(y,2))
        error("x y must be the same size");
    end
%must be equally spaced 
    for i = 1:size(x,2)
        if (x(i) ~= check(i))
            error("intervals must be evenly spaced");
        end
    end
%% finish errors
% calculating step size
    N = size(x,2);
    h = (x(end)-x(1))/(N-1);

%% doing the warning thing if its odd
    Iold = 0;
    if mod( numel(y), 2 ) == 1
        warning('input is odd must use trapizoidal rule on the last interval sorry!')  
   
        Iold = trapz([x(end-1), x(end)], [ y(end-1), y(end)]);
        x(end) = 0;
    end  
%% actually plugging in simpsons rule
    I = (h/3) * ( y(1) +  2*sum( y(3 : 2: end-1) ) + 4*sum( y(2 : 2 : end-2) ) + y(end) );  
    I = Iold + I;
end 