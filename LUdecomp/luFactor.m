function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
n = length( A );
L = zeros( n, n );
U = A;
P = eye( n, n );
for i=1:(n - 1)
% find the row with the maximum entry in the ith column on or below the diagonal
    [tmp, j] = max( abs( U(i:n, i) ) ) ;
    j = j + (i - 1); % account for offset
if ( tmp == 0 )
    error( 'the matrix is singular (non invertible)' );
end

% swap rows 'i' and 'j'
U ([i, j], :) = U ([j, i], :);
P([i, j], :) = P([j, i], :);
L ([i, j], :) = L ([j, i], :);

for j=(i + 1):n
    s = -U(j, i)/U(i, i); % calculate multiplier
    U(j, :) = U(j, :) + s*U(i, :); % add the multiplier times the ith row onto the jth
    L(j, i) = -s; % store the negated multiplier
end
end
L = L + eye( n, n ); % add on the identity matrix
end
