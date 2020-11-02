function [newx,newy]=opPermCross(M,x,y,j)

% RSC
% input: M --- master of chromosomal locus definition
%        x,y --- two substitutions, used to define the two chromosomes M(x) and M(y) involved in the crossover.
%        j -- -intersection
% output: newx,newy -- two new permutations, given by M(newx),M(newy), meet the following crossover effect
%                      M (newx) inherited from before j point M (x), after the j point reference M (y) for sorting
%                      M (newy) inherited from before j point M (y), after the j point reference M (x) for the order

L=length(M);A=M(x);B=M(y);
newx=[];newy=[];
newx=referIndexSort(x(j+1:L),M,B);
newy=referIndexSort(y(j+1:L),M,A);
newx=[x(1:j) newx];
newy=[y(1:j) newy];
return








