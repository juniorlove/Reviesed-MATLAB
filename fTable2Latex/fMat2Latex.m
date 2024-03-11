function midStr = fMat2Latex(data)
    [nr, ~] = size(data);
    % sdata = string(data);
    midStr = strings(nr, 1);
    for ir = 1:nr
        midStr(ir) = strjoin(string(data(ir, :)), " & ") + " \\";
    end
end