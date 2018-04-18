function Out = problem1(n)
three_vector = [3:3:n-1];
five_vector = [5:5:n-1];
fif_vector = [15:15:n-1];
Out = sum(three_vector)+sum(five_vector)-sum(fif_vector);