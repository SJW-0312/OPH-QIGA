%the result of any instance by using any operator


function [tt,gg,succ]=TC(INS)


format long;
op=5;
%INS=input('Please input the inatance you want,INS£º');
T=[];G=[];S=[];
for INS=7

%[A,B,C]=getRInstance1(INS);
[A,B,C]=getRInstance1(INS);

tt=0;gg=0;ss=0;

% Set simulation times
N=2;
for i=1:N
    [t,g,f,u,v,w]=permGA(A,B,C,op);
   
    %RS=[RS; t, g, f, 0, u, 0, v, 0, w];
    tt=tt+t;
    gg=gg+g;
    ss=ss+f;
end
tt=tt/N;gg=gg/N;ss=ss/N;

T=[T tt];
G=[G gg];
S=[S ss];



end


disp('[avgTime  avgEvoGen  SuccRate]=');
 disp([tt,gg,ss]);
 disp('[T  G S]=');
 disp([T,G,S]);
end






