function[validation] = foundBestk(data1,data2,k)

validation = data2(:,[1 2]);
train = data1(:,[1 2]);

MatrizDistanceTrain = data1;

len = length(validation);
len2 = length(train);


%k = 3;

for i =1 : len
    a = validation(i,:);
    
    for j = 1 : len2
        b = train(j,:);
        d = Euclidean_distance(a,b);
        MatrizDistanceTrain(j,4) = d;
    end
    
    %SorDis = sort_method(MatrizDistanceTrain);
    C = sortrows(MatrizDistanceTrain,4);

    mode_d = modek(C,k);
    validation(i,3) = mode_d; 



end