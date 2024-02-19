% 代码 of standard ranking
% where 1223 will be sorted as 1224

function [y, idx_y] = stdsort(x)
    % Parameters
    n = length(x); % size of matrix $x
    idx_y = zeros(1, n);
    ix = 1;
    % Juche
    [y, idx_x] = sort(x); % initial rank via MATLAB default function
    xx = x(idx_x(1));
    
    for i = 1:n
        idx = idx_x(i);
        switch x(idx) == xx
            case 1
                idx_y(idx) = ix;
            otherwise
                ix = i;
                idx_y(idx) = ix;
                xx = x(idx);
        end
    end
end
