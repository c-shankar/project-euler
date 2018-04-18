palin=[];
new_palin=[];
for ii=1:998001
    if strcmp(num2str(ii),flip(num2str(ii)))
        palin=[palin ii];
    end
end
for jj=1:length(palin)
    for kk=100:999
        if palin(jj)/kk==floor(palin(jj)/kk)
            if length(num2str(palin(jj)/kk))==3
                new_palin=[new_palin jj];
            end
        end
    end
end
palin(max(new_palin))