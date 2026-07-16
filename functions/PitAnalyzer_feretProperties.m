function T = PitAnalyzer_feretProperties(T)
% Copyright 2017-2018 The MathWorks, Inc.
% https://blogs.mathworks.com/steve/2018/04/17/feret-properties-wrapping-up/

maxfd = zeros(height(T),1);
maxfd_endpoints = cell(height(T),1);
maxfd_orientation = zeros(height(T),1);

minfd = zeros(height(T),1);
minfd_triangle_points = cell(height(T),1);
minfd_orientation = zeros(height(T),1);

minod = zeros(height(T),1);
minod_lower_points = cell(height(T),1);
minod_upper_points = cell(height(T),1);

minbb = cell(height(T),1);
minbb_a = zeros(height(T),1);

for k = 1:height(T)
    pixels = T.PixelList;%(k);
    V = PitAnalyzer_pixelHull(pixels,'diamond');
    pairs = PitAnalyzer_antipodalPairs(V);
    [maxfd(k),maxfd_endpoints{k}] = PitAnalyzer_maxFeretDiameter(V,pairs);
    points = maxfd_endpoints{k};
    e = points(2,:) - points(1,:);
    maxfd_orientation(k) = atan2d(e(2),e(1));
    
    [minfd(k),minfd_triangle_points{k}] = PitAnalyzer_minFeretDiameter(V,pairs);
    points = minfd_triangle_points{k};
    e = points(2,:) - points(1,:);
    thetad = atan2d(e(2),e(1));
    minfd_orientation(k) = mod(thetad + 180 + 90,360) - 180;
    
    [minod(k),minod_lower_points{k},minod_upper_points{k}] = ...
        PitAnalyzer_feretDiameter(V,maxfd_orientation(k)+90);
    
    [minbb{k},minbb_a(k)] = PitAnalyzer_minAreaBoundingBox(V,pairs);
end

T.MaxFeretDiameter = maxfd;
T.MaxFeretDiameterEndpoints = maxfd_endpoints;
T.MaxFeretDiameterOrientation = maxfd_orientation;
T.MinFeretDiameter = minfd;
T.MinFeretDiameterTrianglePoints = minfd_triangle_points;
T.MinFeretDiameterOrientation = minfd_orientation;
T.OrthogonalDiameter = minod;
T.OrthogonalDiameterLowerPoints = minod_lower_points;
T.OrthogonalDiameterUpperPoints = minod_upper_points;
T.MinAreaBoundingBox = minbb;
T.MinAreaBoundingBoxArea = minbb_a;
end
