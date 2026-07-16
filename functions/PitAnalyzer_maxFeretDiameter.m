function [d,end_points] = PitAnalyzer_maxFeretDiameter(P,antipodal_pairs)
% Copyright 2017-2018 The MathWorks, Inc.
% https://blogs.mathworks.com/steve/2018/04/17/feret-properties-wrapping-up/

if nargin < 2
    antipodal_pairs = PitAnalyzer_antipodalPairs(P);
end

v = P(antipodal_pairs(:,1),:) - P(antipodal_pairs(:,2),:);
D = hypot(v(:,1),v(:,2));
[d,idx] = max(D,[],1);
P1 = P(antipodal_pairs(idx,1),:);
P2 = P(antipodal_pairs(idx,2),:);

end_points = [P1 ; P2];
end
