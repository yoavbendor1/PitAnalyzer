function h = PitAnalyzer_triangleHeight(P1,P2,P3)
% Copyright 2017-2018 The MathWorks, Inc.
% https://blogs.mathworks.com/steve/2018/04/17/feret-properties-wrapping-up/

h = 2 * abs(PitAnalyzer_signedTriangleArea(P1,P2,P3)) / norm(P1 - P2);
end
