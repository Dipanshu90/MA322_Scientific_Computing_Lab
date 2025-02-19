function output_file()
clc
    
    fprintf('Fixed Point Iteration method for Q-1\n');
    fixed_pt_itr(4, @g_1, @f_1, 1e-4, '1', 1,2);

    fprintf('Modified Newton method for Q-2(a)\n');
    modified_newton(1, @f_2a, @f1_2a, @f2_2a, 1e-5, '2(a)', 1,2);

    fprintf('Modified Newton method for Q-2(b)\n');
    modified_newton(-1, @f_2b, @f1_2b, @f2_2b, 1e-5, '2(b)', -1, 0);

    fprintf('Muller method for Q-3(a)\n');
    muller(-0.5, 0, 0.5, @f_3a, 1e-5, '3(a)', -2, 2);

    fprintf('Muller method for Q-3(b)\n');
    muller(0.5, 1, 1.5, @f_3b, 1e-5, '3(b)', 1,5);

    fprintf('Fixed Point Iteration method for Q-4\n');
    fixed_pt_itr(1, @g_4, @f_4, 1e-4, '4', 3, 7);
end