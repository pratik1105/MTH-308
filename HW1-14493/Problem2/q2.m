for k=1:15
    x=power(10,-k);
    answer1=(exp(x)-1)/x;
    answer2=(exp(x)-1)/log(exp(x));
    fprintf('%g %g\n',answer1,answer2);
end
