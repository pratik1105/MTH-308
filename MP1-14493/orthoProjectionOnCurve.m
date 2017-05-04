function tc= orthoProjectionOnCurve(x0,y0,X,Y,dXdt,dYdt,eps)
    h=0.001;
    mindist=(X(0)-x0)*(X(0)-x0)+(Y(0)-y0)*(Y(0)-y0);
    tc=0;
    for i=0:0.002:1
        t=i;
        dist= ((X(t)-x0)*(X(t)-x0)+(Y(t)-y0)*(Y(t)-y0));
       while true
            d2Xdt=(dXdt(t+h)-dXdt(t))/h; %estimate for double derivative
            d2Ydt=(dYdt(t+h)-dYdt(t))/h; %estimate for double derivative
            t = t-(((X(t)-x0)*dXdt(t))+((Y(t)-y0)*dYdt(t)))/(((dXdt(t)*dXdt(t))+((X(t)-x0)*d2Xdt))+((dYdt(t)*dYdt(t))+((Y(t)-y0)*d2Ydt))); %update step in newton's method
            while t>1 
                t=t-1;
            end
            while t<0
                t=t+1;
            end
            if ((X(t)-x0)*(X(t)-x0)+(Y(t)-y0)*(Y(t)-y0)) < dist-eps
                dist= ((X(t)-x0)*(X(t)-x0)+(Y(t)-y0)*(Y(t)-y0));
            else
                break;
            end
       end
       if  ((X(t)-x0)*(X(t)-x0)+(Y(t)-y0)*(Y(t)-y0)) < mindist
           tc=t;
           mindist=((X(t)-x0)*(X(t)-x0)+(Y(t)-y0)*(Y(t)-y0));
       end
    end
end