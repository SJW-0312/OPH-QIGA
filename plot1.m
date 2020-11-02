 T_c=[ 0.0480  40.9093   0.0216   0.3071   0.0127   0.0835  0.0126  ] ;

  G_c=[ 3.27  2878.80   1.75  16.69   1.00  4.88       1.23 ];

S_c=[  1.0   1.0    1.0   1.0  1.0   1.0   1.0];


T=[ 0.0078   16.9678  0.0029   0.0317   0.0020  0.0077  0.0022  ];
 
G=[ 2.69  7343.0  1.23  12.29   1.01  2.97    1.09 ];

S=[  1.0   1.0    1.0   1.0  1.0   1.0   1.0];

X=[1  2  3  4  5  7  8];



figure(1)
semilogy(X,T_c,'*-');
hold on
semilogy(X,T,'*-');
hold on
xlabel('DDP Instance No.');
ylabel('Average Running Time/(s)')
legend('after encryption','without encryption')



figure(2)
semilogy(X,G_c,'*-');
hold on
semilogy(X,G,'*-');
hold on
xlabel('DDP Instance No.');
ylabel('Average evolution generations')
legend('after encryption','without encryption')



