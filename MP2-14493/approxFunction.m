%This code has been developed usign the pseudocode provided in the paper by
%John P. Boyd. 
%The link to the paper is https://pdfs.semanticscholar.org/09c7/d626cd09de525b62eedf70cc91e43f26273e.pdf
function values = approxFunction(xEval,xGrid,fGrid)
    N=size(xGrid,2);
    M=size(xEval,2);
   
    values=zeros(1,M);
    a=xGrid(1);
    b=xGrid(N);
    interpol=zeros(N,N);
    coeff=zeros(1,N);
    for j=1:N
        for k=1:N
            pj=1;
            pk=1;
            if j==1||j==N
                pj=2;
            end
            if k==1||k==N
                pk=2;
            end
            interpol(j,k)=(2*cos(pi*(j-1)*((k-1)/(N-1))))/(pj*pk*(N-1));
        end
    end
    for j=1:N
        for k=1:N
            coeff(j)=coeff(j)+(interpol(j,k)*fGrid(k));
        end
    end
    
    for k=1:M
        for j=1:N
            values(k)=values(k)+(coeff(j)*cos((j-1)*acos((2*xEval(k)-(b+a))/(b-a))));
        end
    end
end