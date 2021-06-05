function [] = plotkNNdistribution()
T = readtable('labeled_data_3.csv');
data1 = table2array(T);
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
      

hold on

xlabel('Quantity')
ylabel('Price')

plot(data_a(:,1),data_a(:,2),'*b')
plot(data_b(:,1),data_b(:,2),'*g')
plot(data_c(:,1),data_c(:,2),'*r')

legend('class 1', 'class 2', 'class 3')

hold off

end
