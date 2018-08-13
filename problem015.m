% nCr where n! gives number of all possible n-path routes, and r is the
% number of routes we require that satisfy:
%   no of horizontal paths = number of vertical paths
% because each set of valid horizontal paths has one and only set of
% vertical paths, ie. consider a path, remove all vertical lines from path,
% now there are no other ways by which you can draw another set of vertical
% lines to the given horizontal lines. So these horizontal-vertical sets of
% required paths are what I call as valid paths. From the total n! number
% of paths, the number of valid paths are only nCr where r is the distance
% of one side (in case of square) and either side (length/breadth) in case
% of rectangle (as nCr = nC(n-r)).

function Out = problem15(n)
Out = nCr((2*n),n)
end

function combinations = nCr(n,r)
combinations = factorial(n)/(factorial(n-r)*factorial(r))
end