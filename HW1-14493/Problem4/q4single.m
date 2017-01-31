% fib(i) and pib(i) refers to i-1 th term in the respective sequences.
c=1+(sqrt(3)/100);
sz=200;
fib = single(zeros(1,sz));
pib = single(zeros(1,sz));
newfibzero= single(zeros(1,sz));
newpibzero= single(zeros(1,sz));
fib(1)=1;
fib(2)=1;
pib(1)=1;
pib(2)=1;

for i=3:sz
    fib(i)=fib(i-1)+fib(i-2);
    pib(i)=c*pib(i-1)+pib(i-2);
end

newfibzero(1)=1;
newfibzero(2)=1;
for n=sz:-1:3
    temp1=fib(n);
    temp2=fib(n-1);
    for k=n-2:-1:1
        dummy=temp2;
        temp2=temp1-temp2; 
        temp1=dummy;
    end
    newfibzero(n)=temp2;
end

newpibzero(1)=1;
newpibzero(2)=1;
for n=sz:-1:3
    temp1=pib(n);
    temp2=pib(n-1);
    for k=n-2:-1:1
        dummy=temp2;
        temp2=temp1-c*temp2;
        temp1=dummy;
    end
    newpibzero(n)=temp2;
end

figure(1)
semilogy(fib,'-');
hold on;
semilogy(pib,'-');
line([1,sz],[125000 125000],'Color','r');
line([1,sz],[10^16 10^16],'Color','r');
legend('fib','pib','1/eps(single)','1/eps(double)');
grid on;

figure(2)
semilogy(abs(1-newfibzero),'-');
hold on;
semilogy(abs(1-newpibzero),'-');
legend('error in fib(0)','error in pib(0)');
grid on;