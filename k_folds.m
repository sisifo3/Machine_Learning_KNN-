function [data1,data2]= k_folds(data_1)

%The first step is, load the data
%T = readtable('labeled_data.csv');
%data_1 = table2array(T);

index = randperm(1043);
data1 = data_1(index(1:830),:);
data2 = data_1(index(831:1043),:);




end