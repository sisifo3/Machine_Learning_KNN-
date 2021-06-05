function[values] = eval_eucli_dis(data_,C)
%C : Cluster index
%data_ : Quality - Price


%T = readtable('dataQP.csv');
%data_ = table2array(T);
%C = [1,3;5,9;7,1];

len = length(data_);
len_c = size(C,1);

values = zeros(len,len_c+2);
values(:,1) = data_(:,1);
values(:,2) = data_(:,2);

for i=1 : len
    q(1,1) = values(i,1);
    q(1,2) = values(i,2);
    for j=1:len_c
        p(1,1) = C(j,1);
        p(1,2) = C(j,2);
        
        d = Euclidean_distance(q,p);
        values(i,j+2) = d;
    end
end


end










