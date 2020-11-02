% T_c=[2.1570         476.49     607.89   1207.58    1372.39     2879.43];
% T=[0.1559    17.8639   30.8556   44.8164   44.9943   49.6881  ];
X=[   19  28   35   46   51   ];

%  63
% 0.000000272070500   0.000000070421500   0.000170224856000   0.002293730241000   0.002846924649500   0.003053224421000



% S_c=[1.0    0.9379    0.9237     0.9207     0.9145   0.8867];
% S= [1.0     0.95   0.9135    0.9167    0.9245   0.8640     ];
%0.000010000000000    0.000010000000000   0.000009459459459   0.000009166666667   0.000009245283019
%S1=[1   1  0.9459    0.9166    0.9245 ]
% figure(2)
% % semilogy(X,T_c,'*-');
% plot(X,S_c,'*-')
% hold on
% plot(X,S,'*-');
% hold on
% xlabel('DDP Instance No.');
% ylabel('Success rate')
% legend('after encryption','without encryption')
T_1=[    0.00704    17.022   229.373     284.69   305.322 ];
S_1=[   1   1   0.9459   0.9166   0.9145];

T_c1=[  0.625   140.372    395.97    616.35    724.32];
S_c1=[    1      1        0.944     0.927     0.923];

figure(2)
% semilogy(X,T_c,'*-');
semilogy(X,S_c1,'*-')
hold on
xlabel('The length of the input set C');
ylabel('Success rate')



figure(1)
plot(X,T_c1,'*-');
%plot(X,T_c,'*-')
hold on
xlabel('the lenglth of the input set C');
ylabel('Average Running Time/(s)')

figure(3)
% semilogy(X,T_c,'*-');
semilogy(X,S_c1,'*-')
hold on
semilogy(X,S_1,'*-')
hold on
xlabel('The length of the input set C');
ylabel('Success rate')
legend('OPH-QIGA','DDmap2')



figure(4)
% semilogy(X,T_c,'*-');
semilogy(X,T_c1,'*-')
hold on
semilogy(X,T_1,'*-')
hold on
xlabel('The length of the input set C');
ylabel('Average Running Time/(s)')
legend('OPH-QIGA','DDmap2')

