function midStr = fTable2Latex(data)
    nr = height(data);
    nc = width(data);
    midStr = strings(nr, 1);
    
    for i = 1:nr
        for j = 1:nc
            switch j
                case nc
                    midStr(i) = midStr(i) + string(data{i, j});
                otherwise
                    midStr(i) = midStr(i) + char(data{i, j}) + " & ";
            end
        end
        midStr(i) = midStr(i) + " \\";
    end
end
