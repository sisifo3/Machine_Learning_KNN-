function [] = plotkNN(data1,pred_data)
%{
    b     blue
    g     green
    r     red
    c     cyan
    m     magenta
    y     yellow
    k     black
    w     white
%}

len = length(data1);
len2 = length(pred_data);

a = 0;
b = 0;
c = 0;


for i = 1 : len
    if data1(i,3) == 1
        a = a + 1;
        data_a(a,:) = data1(i,:);
    elseif data1(i,3) == 2
        b = b + 1;
        data_b(b,:) = data1(i,:);
    else
        c = c + 1;
        data_c(c,:) = data1(i,:);
    end
end 
      



a1 = 0;
b1 = 0;
c1 = 0;

data_a1 = [0 0 0];

for j = 1 : len2
    if pred_data(j,3) == 1
        a1 = a1 + 1;
        data_a1(a1,:) = pred_data(j,:);
    elseif pred_data(j,3) == 2
        b1 = b1 + 1;
        data_b1(b1,:) = pred_data(j,:);
    else
        c1 = c1 + 1;
        data_c1(c1,:) = pred_data(j,:);
    end
end 
 


plot(data_a1(:,1),data_a1(:,2),'ob')
hold on

plot(data_b1(:,1),data_b1(:,2),'og')
plot(data_c1(:,1),data_c1(:,2),'or')


xlabel('Quantity')
ylabel('Price')

plot(data_a(:,1),data_a(:,2),'*b')
plot(data_b(:,1),data_b(:,2),'*g')
plot(data_c(:,1),data_c(:,2),'*r')

legend('test data ','test data','test data', 'class 1', 'class 2', 'class 3')

hold off


end