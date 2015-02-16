% 방송통신대학교 정보과학과 지능형정보처리시스템
% 단위공분산 가정한 베이지안 분류기의 결정경계 그리기 샘플 예제
% 
% 데이터 불러오기
load dataS1.mat

% 데이터 출력
plot(X1(:,1), X1(:,2), 'r+')
hold on, grid on
plot(X2(:,1), X2(:,2), 'bo')

% 결정경계 그리기 (단위공분상 가정한 경우)
K = 2;      % 클래스의 개수
M = [mean(X1); mean(X2)];       % 각 클래스의 표본평균 계산
% 2차원 입력공간을 격자 형태로 나누어 입력 행렬 만듦
[x, y] = meshgrid([-3:0.2:7], [-3:0.2:7]);
XY = [x(:), y(:)];

% 입력 행렬에 대한 분류 수행
for i = 1 : size(XY,1)
    for j = 1 : K
        d(j,1) = (XY(i,:)-M(j,:))*(XY(i,:)-M(j,:))';
    end
    [minVal, minIdx] = min(d);      % 최소 거리 클래스 탐색
    res_classify(1,i) = minIdx;     % 클래스 지정
end

% 결정경계 출력
axis([-3 7 -3 7]);      % 출력 공간 지정
res = reshape(res_classify(1,:), size(x));
contour(x, y, res);     % 결정경계 그리기
