### 한국방송통신대학교 지능형정보처리시스템 참고자료

#### 1. 클래스 공통 단위공분산 행렬을 가정한 베이지안 분류기의 결정경계

**DecisionBoundarySample 폴더**

입력 데이터의 차원이 2이고 2개의 클래스(X1, X2)를 가진 샘플 데이터에 대해, 각 클래스가 단위공분산을 가지고 있다고 가정하고 이에 따른 베이지안 분류기를 구성하여 결정경계를 그린다. 

- decisionBoundarySample.m - 수행코드
- dataS1.mat - 샘플 데이터

#### 2. 계층적 군집화 알고리즘 수행 및 덴드로그램 출력

**HierarchicalClustering 폴더**

입력 데이터의 차원이 1인 4개의 샘플에 대해 계층적 군집화 적용하고 덴드로그램으로 표현

* hierarchical.m - Matlab code
* hierarchicalOctave.m - Octave code
* Dendrogram Example

![Dendrogram Example](./HierarchicalClustering/DendrogramExam.png)