% 방송통신대학교 정보과학과 지능형정보처리시스템
% 계층적 군집화 알고리즘 수행 및 덴드로그램 출력

pkg load statistics	% Load statistics package
X = [1; 4; 3; 9];	% Generate Sample Data
Y = pdist(X);		% Compute distance between each sample	(Default, Euclidean distance)
Z = linkage(Y);		% Agglomerative hierarchical cluter tree (Default, single linkage)
dendrogram(Z)		% Plot dendrogram
title('Dendrogram Example')
xlabel('Sample Index')
ylabel('Distance')
