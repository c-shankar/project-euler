function Out = problem14(n)
term_vector=[];
for ii=1:n
    temp=ii;
    count=1;
    while temp>1
        if rem(temp,2)==0
            temp=temp/2;
        else
            temp=3*temp+1;
        end
        count=count+1;
    end
    term_vector=[term_vector count];
end
%Out = max(term_vector)
Out = find(term_vector == max(term_vector(:)));