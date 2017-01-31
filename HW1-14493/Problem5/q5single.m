% dp(i,j) refers to a(i-1,j-1) due to 1 based indexing.
% maxi(n) refers to maximum over k for a(n-1,k) for the same reason.
% E(n) refers to E(n-1)(as defined in question) for the same reason.
sz=single(130);
dp=single(zeros(sz,sz));
E=single(zeros(1,sz));
maxi=single(zeros(1,sz));
for i=1:sz
    dp(i,1)=1;
end

maxi(1)=1;
for k=2:sz
    for n=k:sz
        dp(n,k)=(((n-k+1))*dp(n,k-1))/(k-1);
        maxi(n)=max(maxi(n),dp(n,k));
    end
end

for n=1:sz
    for k=0:n-1
        E(n)= E(n)+ k*dp(n,k+1);
    end
    E(n)=E(n)/power(2,n-1);
end

for n=1:sz
    fprintf('%g %g\n',maxi(n),E(n));
end

range=[10,20,50];


for i=1:3
    val=range(i);
    DpByMaxi=single(zeros(1,val+10));
    for k=1:val
    DpByMaxi(k)=dp(val+1,k+1)/maxi(val+1);
    end
    
    if i==1
        plot(DpByMaxi,'-');
    end
    
    if i==2
        plot(DpByMaxi,'--');
    end
    
    if i==3
        plot(DpByMaxi,'.-.');
        legend('n=10','n=20','n=50');
    end
    
    hold on;
end