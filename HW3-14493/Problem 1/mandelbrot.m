function h=mandelbrot(A,n,N)
h=A/n;
disp(h);
for j= A:-h:0
    for i= -A:h:A
        x=i+h/2;
        y=j+h/2;
        for k=1:N
            if (x-1)*(x-1)+y*y<0.25
               break; 
            end
            tempx=updateof(x,y,1);
            tempy=updateof(x,y,2);
            x=tempx;
            y=tempy;
        end
        if ((x-1)*(x-1))+(y*y)<0.25
            fprintf('1 ');
        else
            fprintf('0 ');
        end
    end
    fprintf('\n');
end
end