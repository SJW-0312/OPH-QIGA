A=unifrnd(0,1,1,50000);
B=unifrnd(0,1,1,50000);
C=randn(1,50000);
D=randn(1,50000);
T1=(5*A+B)/6;
T2=(5*C+D)/6;
T3=(A+C)/2;
%figure(1)
% subplot(3,2,1);
% gqqplot(A,'unif');
% title('A unif');
% 
% 
% subplot(3,2,2);
% gqqplot(C,'norm');
% title('C, norm');
figure(1)
%subplot(3,1,1);
gqqplot(T1,'unif');
%title('Both k and r obey uniform random distribution, ciphertext is compared with uniform random distribution');

figure(2)
%subplot(3,1,2);
gqqplot(T2,'norm');
%title('Both k and r obey the normal random distribution, the ciphertext is compared with the normal random distribution');

figure(3)
%subplot(3,1,3);
gqqplot(T2,'unif');
%title('Both k and r obey the normal random distribution, the ciphertext is compared with uniform  random distribution');



% subplot(3,2,6);
% gqqplot(T2,'unif');
% title('T2,unif');

% figure(2)
% %subplot(2,1);
% gqqplot(T2,'unif');
% title('QQplot for uniform data');
% figure(3)
% %subplot(2,2);
% gqqplot(T2,'norm');
% title('QQplot for normal data');
% 
% figure(4)
% %subplot(2,2);
% gqqplot(T2,'unif');
% title('QQplot for normal data');
