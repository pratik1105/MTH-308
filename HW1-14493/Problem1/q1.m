for i=3:12
    n=power(2,i);
    fprintf('%g ',n);
	fprintf('%g ',abs(pi - 6*Polyrec(1/sqrt(3),n))/pi);
	fprintf('%g\n',abs(pi - 4*Polyrec(1,n))/pi);  
end