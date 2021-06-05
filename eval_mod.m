function [] = eval_mod()

%The first step is, load the data
T = readtable('labeled_data_3.csv');
data_1 = table2array(T);

k = 3;

%data1 = train
%data2 = test

[data1,data2]= k_folds(data_1);

[pred_data] = get_labales(data1,data2,k);
%disp(pred_data)
%disp(data2)
acc = accuracy_t(pred_data, data2);
disp(acc)

%plotkNN(data1,pred_data)

%predictedLabels = pred_data(:,3);
%trueLabels = data2(:,3);
%confusionchart(trueLabels,predictedLabels)
%hold on
end