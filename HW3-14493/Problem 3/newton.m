function h=newton(x0,m)
    x=zeros(1,m);
    y=zeros(1,m);
    x(1)=x0;
    y(1)=x(1)/sqrt(1+x(1)*x(1));
    for i=2:m
        x(i)=-1*x(i-1)*x(i-1)*x(i-1);
        y(i)=x(i)/sqrt(1+x(i)*x(i));
    end
    
    figure;
    plot(y);
    legend('f(Xm) versus Xm');
end