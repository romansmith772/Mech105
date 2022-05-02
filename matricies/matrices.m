function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
A=zeros(n,m);
A(1,:) = 1:m;
A(:,1) = 1:n;
if nargin>2
    error('2 inputs only, try again idiot')
elseif nargin==2      
    for i = 2:n
        for j = 2:m
            A(i,j) = (A(i-1,j)+A(i,j-1));
        end
    end
    disp(A)
else nargin<2
    error('2 inputs only, try again')
end
