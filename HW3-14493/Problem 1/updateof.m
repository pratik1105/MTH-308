function h= updateof(x,y,t)
    if t==1
        h=((x*x*x)+(x*y*y)+x)/(2*((x*x)+(y*y)));
    end
    
    if t==2
        h=((y*y*y)+(y*y*x)-y)/(2*((x*x)+(y*y)));
    end
end
