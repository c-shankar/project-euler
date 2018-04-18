function Out = problem15(n)
prod = 0;
for i=1:n
    prod = prod + i*(i-1);
end
Out = 1+prod+(n*(n+1))/2;