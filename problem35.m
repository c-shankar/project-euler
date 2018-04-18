function Out = problem35(n)
prime_vec=[];
out_vec=[];
for ii=1:n-1
    if isprime(ii)
        prime_vec=[prime_vec ii];
    end
end
% to find the no. of digits of any number : max(ceil(log10(abs(<number>))),1)
% to find number of digits, always use log
for jj=1:length(prime_vec)
    digits=max(ceil(log10(abs(prime_vec(jj)))),1);
    count=0;
    if digits>1
        newjj=prime_vec(jj);
        for kk=1:digits-1
            newjj=rem(newjj,(10^(digits-1)))*10 + floor(newjj/10^(digits-1));
            if isprime(newjj)
                count=count+1;
            end
        end
        if count+1==digits
            out_vec=[out_vec prime_vec(jj)];
        end
    elseif digits==1
       out_vec=[out_vec prime_vec(jj)];
    end
end
Out = length(out_vec);
            