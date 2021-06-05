function[d] = Euclidean_distance(q,p)
%d_1 = Euclidean distance.
%d_1 = \frac{1}{N(N-1)} \sum_{i=1}^N-1 \sum_{j=i+1}^N ||x_i - x_j||

%d(p,q) = \sqrt{(p_1 - q_1)^2 + (p_2 + q_2)^2}

%p = [3,2];
%q = [1,4];

% a = (p(1) - q(1))^2;
% b = (p(2) - q(2))^2;

d = sqrt( (p(1)-q(1))^2 + (p(2)-q(2))^2 );
% disp(d)

% F = @(x) ((1-x/(1+x)))^2;


end