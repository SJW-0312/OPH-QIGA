function [f]=DD_fitness(a,b,c,u,v)
%function [f]=DD_fitness(A,B,C,u,v)
% initialization Q(gen)


%  a=[1  2  3  5];
%  b=[2  2  3  4];
%  c=[1  1  1  2   2   2  2];
%  u=[2  4  3  1];
%  v=[3  1  4  2];

% u=[1  3  2  4];
% v=[2  3  4  1]





%  a=[7  8  18 ];
%  b=[1  2  2  4  5  5  5  9];
%  c=[1  2   2   2  2  3  4  5  5  7 ];
%  u=[2  3  1 ];
%  v=[5  6  4  2  3  7  1  8];





 k=randi(8, 1, 5);
 L=sum(k);
 s=randi(8, 1, 5);
 r=rand(1, 5);


A=cell(1,length(a));q=zeros(1,5);
for j=1:length(a)
    q=a(j).*s.*k+r;
    A{j}=q;
end

 uA=A(u);

B=cell(1,length(b));q=zeros(1,5);
for j=1:length(b)
    q=b(j).*s.*k+r;
    B{j}=q;
end
 vB=B(v);
C=cell(1,length(c));q=zeros(1,5);
for j=1:length(c)
    q=c(j).*s.*k+r;
    C{j}=q;
end
SuA=[];SvB=[];
SA=[];
SA{1}=uA{1};

for i=2:length(a)
    SA{i}=SA{i-1}+uA{i};
end

SB=[];
SB{1}=vB{1};
for i=2:length(b)
    SB{i}=SB{i-1}+vB{i};
end



la=length(a);lb=length(b);
T=[];
i=1;j=1;k=1;
while (i<=la) || (j<=lb)
    if (i<=la) && (j<=lb)
        if SA{i}<SB{j}
            T{k}=SA{i};i=i+1;k=k+1;
        else
            T{k}=SB{j};j=j+1;k=k+1;
        end
    else
        while (i<=la)
            T{k}=SA{i};i=i+1;k=k+1;
        end
        while (j<=lb)
            T{k}=SB{j};j=j+1;k=k+1;
        end
    end
end
% È¥µôÄ©Î²ÖØ¸´ÔªËØ
 T(length(T))=[];



DA=[];F=[];
DA{1}=T{1};
%DA{1}
for i=2:length(T)
    DA{i}=T{i}-T{i-1};
   % DA{i}
end

n = length(DA);
for j = 1:n
    for i = 1:n-j
        if DA{i} > DA{i+1}
            t = DA{i};
            DA{i} =  DA{i+1};
             DA{i+1} = t;
        end
    end
end
%  DA{1}
%  DA{2}
%  DA{3}
%   DA{4}
%  DA{5}

F=DA;
fitnum=0;missnum=0;
lf=length(F);lc=length(c);
i=1;j=1;
while (i<=lf) || (j<=lc)
    if (i<=lf) && (j<=lc)
        if round(F{i})<round(C{j})
            missnum=missnum+1;i=i+1;             
        elseif round(C{j})<round(F{i}) 
            missnum=missnum+1;j=j+1;
        else
            fitnum=fitnum+1;i=i+1;j=j+1;        
        end
    else
        if (i<=lf)
            missnum=missnum+(lf-i+1);i=lf+1;
        elseif (j<=lc)
            missnum=missnum+(lc-j+1);j=lc+1;
        end
    end
end
f=fitnum/(fitnum+missnum);
return




% for i=1:length(DA)
% if round(DA{i})==round(C{i})
% f=1;
% return 
% else
%     f=0;
%     return 
% end

%end





