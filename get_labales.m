function [pred_data] = get_labales(data1,data2,k)
%data1 = train
%data2 = test

train = data1;
test = data2;

pred_data = test(:,[1 2]);
train_dist_k = train;

lentr = length(train);
lente = length(test);

for i = 1 : lente
    %p = [3,2];
    p = test(i ,[1 2]);
    for j = 1 : lentr
        q = train(j, [1 2]);
        d = Euclidean_distance(q,p);
        train_dist_k(j,4) = d;
    end
    %SorDis = sort_method(train_dist_k);
    %disp(SorDis)
    C = sortrows(train_dist_k,4);
    label = modek(C,k);
    pred_data(i,3) = label;
    

end