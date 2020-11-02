function [IA,IAI]=referIndexSort(IA,A,B)

%Index by reference: index IA of A(not necessarily consecutive) is sorted by reference to B, and the result is required to be consistent with B, that is, 
%if A(IA(I))<A(IA(j)), such A sequence relation must be found in B
%               necessary condition length(IA)<=length(A)
% ¡±Output: sorted index IA and "index IAI of index IA"

L=length(IA);IAI=1:L;

% Reference index for bubble sort
swap=1;
while (swap==1)
    swap=0;
for i=1:L-1
    for j=i+1:L
        if refOrder(A(IA(IAI(j-1))),A(IA(IAI(j))),B)>0
            t=IAI(j-1);IAI(j-1)=IAI(j);IAI(j)=t;
            swap=1;
        end
    end
end
end

% % Improved bubble reference index sort
% n = LIA;IAI=1:n;
% while (n>0)
%     newn = 0;
%     for j = 2:n
%         if refOrder(A(IA(IAI(j-1))),A(IA(IAI(j))),B)>0
%             t=IAI(j-1);IAI(j-1)=IAI(j);IAI(j)=t;
%             newn = j;
%         end
%     end
%     n = newn;
% end

IA=IA(IAI);
return

function [k]=refOrder(x,y,B)
% if x<=y
%     k=0;
% else
%     k=1;
% end
k=0;LB=length(B);
jx=1;
while (x~=B(jx) && jx<LB) 
    jx=jx+1;
end
if x~=B(jx)    
    return
end
jy=LB;
while (y~=B(jy) && jy>1) 
    jy=jy-1;
end
if y~=B(jy)
    return
end
if jx>jy
    k=1;
end
return

       