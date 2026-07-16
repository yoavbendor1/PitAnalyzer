function [d,V1,V2] = PitAnalyzer_feretDiameter(V,theta)
% Copyright 2017-2018 The MathWorks, Inc.
% https://blogs.mathworks.com/steve/2018/04/17/feret-properties-wrapping-up/

% Rotate points so that the direction of interest is vertical.

alpha = 90 - theta;

ca = cosd(alpha);
sa = sind(alpha);
R = [ca -sa; sa ca];

% Vr = (R * V')';
Vr = V * R';

y = Vr(:,2);
ymin = min(y,[],1);
ymax = max(y,[],1);

d = ymax - ymin;

if nargout > 1
    V1 = V(y == ymin,:);
    V2 = V(y == ymax,:);
end
