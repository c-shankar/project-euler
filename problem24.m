v = [0 1 2 3 4 5 6 7 8 9];
permutations = flipud(perms(v));
s=permutations(1000000,:);
ans=sym(s*(10.^(length(s)-1:-1:0))')%for combining row vector digits to a single number