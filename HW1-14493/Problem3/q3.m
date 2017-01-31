% dp(i,j) actually refers to f(i-1,j-1) because of 1 based indexing.
dp=zeros(65,65);
error=zeros(1,60);

for j=1:62
    dp(j,1)=sin(1+(j-1)*pi/3);
end

for k=2:61
    for j=1:61
        dp(j,k)=dp(j,k-1)-dp(j+1,k-1);
    end
end

for k=1:60
    error(k)=abs(dp(2,k+1)-sin(1+(1-k)*pi/3));
end

plot(error,'-o');
legend('error in double precision');