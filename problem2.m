function Out = problem2(n)
a=1;
b=2;
fibo = [a b];
even_fibo=[];
ii=3;
while fibo(ii-1)<=n
    c=a+b;
    fibo=[fibo c];
    a=b;
    b=c;
    ii=ii+1;
end
fibo=fibo(1:end-1);             %bcoz no do-while in matlab
for jj=2:2:length(fibo)         %sum of even terms-unwanted
    temp=fibo(jj);
    even_fibo=[even_fibo temp];
end

Out=sum(fibo(rem(fibo,2)==0))  %sum of even fibo numbers