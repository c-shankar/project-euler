sum=0;
for ii=1:999
    sum=sum+letters(ii);
end
sum=sum+11 %for "one thousand"

function Out=letters(n)
if n>=1 && n<=20
    Out = check_array(n);
elseif n>20 && n<100
    term1=floor(n/10)*10;
	term2=rem(n,10);
    Out = check_array(term1)+check_array(term2);
elseif n>=100 && n<1000
    term1=floor(n/100);
    term2=floor(rem(n,100)/10)*10;
    term3=rem(n,10);
    if (check_array(term2) == 0 && check_array(term3) == 0)
        Out = check_array(term1)+7; %7 for "hundred"
    else
        Out = check_array(term1)+10+check_array(term2)+check_array(term3); %10 for "hundred and"
    end
end
end

function letter_count = check_array(n)
three_letters = [1,2,6,10];
four_letters = [4,5,9];
five_letters = [3,7,8,40,50,60];
six_letters = [11,12,20,30,80,90];
seven_letters = [15,16,70];
eight_letters = [13,14,18,19];
nine_letters = 17;
reject = 0;
if ismember(n,three_letters)
    result=3;
elseif ismember(n,four_letters)
    result=4;
elseif ismember(n,five_letters)
    result=5;
elseif ismember(n,six_letters)
    result=6;
elseif ismember(n,seven_letters)
    result=7;
elseif ismember(n,eight_letters)
    result=8;
elseif ismember(n,nine_letters)
    result=9;
elseif ismember(n,reject)
    result=0;
end
letter_count = result;
end