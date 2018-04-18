function Out = problem436(n)
julie_wins=0;
for i=1:n                   %monte carlo
    s=0;
    while s<1
        louise=rand;
        s=s+louise;
    end
    while s<2
        julie=rand;
        s=s+julie;
    end
    if louise<julie
        julie_wins=julie_wins+1;
    end
end
Out = julie_wins/n;