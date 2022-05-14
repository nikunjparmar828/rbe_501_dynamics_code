function J = jacob0(S,q)
% your code here
    [row_q col_q] = size(q);
    J_s = rand(6,col_q);

    [row col] = size(S);
    
    for j = 1: col
        tt = eye(4);
        for i = 1:j
            tt = tt * twist2ht(S(:,i),q(i));
        end
        J_s(:,j) = adjoint(S(:,j),tt);
        
    end
    % If necessary, you calculate the homogeneous transformation associated with a twist V and displacement omega with:
    % T = twist2ht(V,omega);
    
    % You can also calculate the adjoint transformation of a twist V w.r.t. a homogeneous transformation matrix T with:
    % adjoint(V,T)
    J = J_s;
end
