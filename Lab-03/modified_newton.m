function [root, itr] = modified_newton(x0, f, f1, f2, tolerance)
    max_itr = 1000;
    itr = 0;
    N = [];
    N1 = [0];
    Approx_soln = [x0];
    Error = [];

    v = f(x0);
    w = f1(x0);
    z = f2(x0);
    x1 = x0;
    err = x0;
    if abs(v) < tolerance
        root = x1;
        fprintf('No. Of Iterations\tApprox. Soln.\tError\n');
        fprintf('%d\t\t\t%f\t0\n', itr, root);
    else
        fprintf('No. Of Iterations\tApprox. Soln.\t\tError\n');
        while abs(v) >= tolerance || err >= tolerance
            x1 = x0 - (v*w)/(w^2 - v*z);
            v = f(x1);
            w = f1(x1);
            z = f2(x1);
            err = abs(x1-x0);
            x0 = x1;
            itr = itr + 1;
            fprintf('%d\t\t\t%.15f\t%d\n', itr, x0, err);
            N = [N, itr];
            N1 = [N1, itr];
            Approx_soln = [Approx_soln, x0];
            Error = [Error, err];
            if itr == max_itr
                break;
            end
        end
    end
    if itr == max_itr
        root = NaN;
    else 
        root = x1;
    end
    fprintf('\nThe required root is: %f\n', root);
    fprintf('The number of iterations performed: %d\n\n', itr);
end