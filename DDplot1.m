A=[0.03,0.24,0.41,0.59,0.67];

B=unifrnd(0,1,1,50);

C=unifrnd(0,1,1,5000);
E=unifrnd(0,1,1,5000);

D=unifrnd(0,1,1,1000);

T1=C.*E;
T2=0.5*(T1+C);
figure(1)
subplot(2,2,1);

gqqplot(A,'unif');

title('Sample size n = 5');

subplot(2,2,2);

gqqplot(B,'unif');

title('Sample size n = 50');

subplot(2,2,3);

gqqplot(C,'unif');

title('Sample size n = 500');

subplot(2,2,4);

gqqplot(D,'norm');

title('Sample size n = 1000');


figure(2)
subplot(3,2,1);

gqqplot(T1,'unif');

title('C.*E unif');

subplot(3,2,2);

gqqplot(T1,'norm');

title('C.*E norm');

subplot(3,2,3);

gqqplot(T2,'unif');

title('C*E+R unif');

subplot(3,2,4);

gqqplot(T2,'norm');

title('C*E+R norm');

subplot(3,2,5);

gqqplot(C,'unif');

title('c unif');
subplot(3,2,6);

gqqplot(C,'norm');

title('c morm');




P=unifrnd(0,1,1,5000);
Q=unifrnd(0,1,1,5000);



figure(3)

subplot(3,2,1);

gqqplot(T1,'unif');

title('C.*E unif');

subplot(3,2,2);

gqqplot(T1,'norm');

title('C.*E norm');

subplot(3,2,3);

gqqplot(T2,'unif');

title('C*E+R unif');

subplot(3,2,4);

gqqplot(T2,'norm');

title('C*E+R norm');

subplot(3,2,5);

gqqplot(C,'unif');

title('c unif');
subplot(3,2,6);

gqqplot(C,'norm');

title('c morm');



% k=unifrnd(0,1,1,50);
% r=unifrnd(0,1,1,50);
% 
% x=unifrnd(0,100,1,50);
% 
% B=0.5.*(k.*x+r);
% B
