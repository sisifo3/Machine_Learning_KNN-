function[acc] = accuracy_t(datap, data1)

len = length(datap);

%disp(length(datap))
%disp(length(data1))

correct = 0;

for i = 1 : len
    if datap(i,3) == data1(i,3)
        correct = correct + 1;
    end
end
%disp(correct)
acc = correct/len;

end