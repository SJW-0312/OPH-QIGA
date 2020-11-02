function [A,B,C]=getRInstance1(INS)

A=[];B=[];C=[];

if INS==1
% Instance 1
disp('------------------- D10 TestSet 1 -------------------')
A =[1     5     5     6    15    20];
B =[1     1     2     2     3     3     3     3     3     5     6     9    11];
C =[1     1     1     2     2     2     2     3     3     3     3     3     3     3     3     5     6     6];

elseif INS==2
% Instance 2
disp('------------------- D10 TestSet 2 -------------------')
A =[ 1     1     2     2     2     4     4     5     5     6     6     7     8];
B =[ 1     3     3     4     6    14    22];
C =[1     1     1     1     1     2     2     2     2     2     2     3     3     4     4     5     5     6     6];

elseif INS==3
% Instance 3
disp('------------------- D10 TestSet 3 -------------------')
A =[2     4     5     5     5     6     6     6    10    10    13    15    18];
B =[1     3     3     3     4     5     6     6     6     6     8     9    10    10    12    13];
C =[1     1     1     1     1     2     2     3     3     3     3     4     4     4     4     4     5     5     5     5     5     5     5     5     6     6    6     6];


elseif INS==4
% Instance 4
disp('------------------- D10 TestSet 4 -------------------')
A =[1     1     1     1     3     4     4     4     5     5     5     6     7     8     9    12    12    13];
B =[1     1     2     2     3     4     4     4     4     4     5     7     7     9    10    11    11    12];
C =[ 1     1     1     1     1     1     1     1     1     1     1     2     2     2     2     2     3     3     3     3     4     4     4     4     4     4     4     5     5     5     5     5     5     5     5];

elseif INS==5
% Instance 5
disp('------------------- D10 TestSet 5 -------------------')
A =[ 1     1     2     2     3     3     3     4     4     4     4     4     4     4     5     5     5     5     6     6     6     7     7     8     9    11     12];
B =[1     2     2     3     3     5     5     5     5     6     6     7     7     8     8     9    11    11    15    16];
C =[ 1     1     1     1     1     1     1     1     2     2     2     2     2     2     2     2     2     2     2     3     3     3     3     3     3     3     3     3     4     4     4     4     4     4     4     4     4     4     4     4     5     5     5     5     5     5];

elseif INS==6
% Instance 6
disp('------------------- D10 TestSet 6 -------------------')
A =[1     4     4     4     4     4     5     5     6     6     8     9    10    10    10    10    12    14    17    19];
B =[1     1     1     1     2     2     2     2     3     3     3     3     4     4     5     5     5     6     6     6     6     6     7     7     7     7     9     9     9     9    10    11];
C =[ 1     1     1     1     1     1     1     1     1     1     1     1     2     2     2     2     2     2     2     2     2     2     3     3     3     3     3     3     3     3     4     4     4     4     4     4     5     5     5     5     5     5     5     5     6     6     6     6     6     6     6];


elseif INS==7
% Instance 7
disp('------------------- D10 TestSet 7 -------------------')
A =[1     1     2     2     2     2     2     2     3     3     4     4     4     6     6     6     6     7     7     9     9    10    10    10    11    11    11    13    14    22];
B =[1     1     1     2     2     2     2     2     3     3     3     3     3     3     3     4     4     4     5     6     6     6     7     7     7     7     8     8    10    11    11    12    21    22];
C =[ 1     1     1     1     1     1     1     1     1     1     1     1     1     1     2     2     2     2     2     2     2     2     2     2     2     2      2     3     3     3     3     3     3     3     3     3     3     3     4     4     4     4     4     4     4     5     5     5     5     5     5     5        5     5     6     6     6     6     6     6     6     6     6];


elseif INS==8
% Instance 8
disp('------------------- D10 TestSet 8 -------------------')
A =[1     1     1     1     2     2     2     2     3     3     3     3     3     3     4     4     4     4     4     5     5     5     5     6     6     6    6     6     7     9     9     9    10    10    13    13    15    19    27];
B =[1     2     2     3     3     3     3     3     3     3     4     4     4     4     5     5     5     6     6     6     8     8     9    10    10    11   12    13    17    18    24    26];
C =[ 1     1     1     1     1     1     1     1     1     1     1     2     2     2     2     2     2     2     2     2     2     2     2     3     3     3    3     3     3     3     3     3     3     3     3     3     3     4     4     4     4     4     4     4     4     4     4     4     4     5     5     5    5     5     5     5     5     5     5     6     6     6     6     6     6     6     6     6     6     6];

elseif INS==9
% Instance 9
disp('------------------- D10 TestSet 9 -------------------')
A =[1     1     1     1     3     3     3     4     4     4     4     4     4     4     5     5     5     6     6     6     6     7     9    10    10    12   13    13    14    14    14    14    15    15    17    26];
B =[1     1     1     1     1     2     2     2     2     2     2     2     3     3     3     4     4     4     4     5     5     5     5     6     6     6     6     7     8     8     9     9     9    10    10    10    10    11    12    12    12    13    14    15    16];
C =[ 1     1     1     1     1     1     1     1     1     1     1     1     1     2     2     2     2     2     2     2     2     2     2     3     3     3      3     3     3     3     3     3     3     3     3     4     4     4     4     4     4     4     4     4     4     4     4     4     4     4     4     4      4     4     4     5     5     5     5     5     5     5     5     5     5     5     5     5     5     5     5     6     6     6     6     6     6     6     6     6];

end

disp('Instance size=');disp([length(A),length(B),length(C)]);

return