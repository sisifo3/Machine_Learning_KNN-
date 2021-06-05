function[errorM] = Eval_Sum_of_Squared_Error(A,Clusters)
%For each point, the error is the distance to the nearest cluster
%To get SSE,we square these errors and sum them

% Clusters = [2 , 3 ,4];
lenA = length(A);
lenC = length(Clusters);
sA = size(A,2);
error = 0;
for i = 1 : lenC
    for j = 1:lenA
        if A(j,sA) == i
            error = error + A(j,i+2);
        end
    end
    errorM(i) = error;
end
    
%disp(errorM)

end