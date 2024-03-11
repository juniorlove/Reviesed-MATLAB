function LatexStr = fExcel2Latex(rdata, fname)
    nc = width(rdata);
    header = "\begin{tabular}{" + repmat('c', 1, nc) + "}";
    footer = "\end{tabular}";
    fname1 = "xdemo"; fname3 = ".txt";
    switch nargin
        case 2
            fid = fopen(fname + fname3, 'w');
        case 1
            fname = fname1 + fname3;
            fname2 = 1;

            while exist(fname, 'file')
                fname2 = fname2 + 1;
                fname = fname1 + num2str(fname2) + fname3;
            end
        
            fid = fopen(fname, 'w');
        otherwise
            error("谬哉！您的输入参数有误，请重新输入。\nError: please recheck your mistaken input.");
            return;
    end
    
    

    switch class(rdata)
        case "table"
            body = fTable2Latex(rdata);
        case "double"
            body = fMat2Latex(rdata);
        case "cell"
    end

    LatexStr = [header; body; footer];
    fprintf(fid, '%s\n', LatexStr);
    fclose(fid);
end
