function [data1, data3]= k_folds_2(n,data_1)

%The first step is, load the data
%T = readtable('labeled_data.csv');
%data_1 = table2array(T);

%n = 9;

len =  length(data_1);

l = len/10;

a = l*n;
b = l*(n+1);

%disp(l)
%disp(a)
%disp(b)

data1 = data_1((a : b), :);

data2 = data_1((1 : a) , : );

data3 = [data2  ; data_1((b:830),:)];


end