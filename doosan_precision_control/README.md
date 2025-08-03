# Doosan M0609 정밀 농도 제어 시스템 발표자료

## 📁 프로젝트 구조

```
doosan_precision_control/
├── main.tex                    # 메인 발표 파일
├── figures/                    # 이미지 및 그래프 폴더
├── sections/                   # 섹션별 분리 파일 폴더
└── README.md                   # 이 파일
```

## 🎯 발표 개요

**제목:** Precision Liquid Concentration Control System  
**부제:** Using Doosan M0609 Collaborative Robot with Real-time Hydrodynamic Modeling  
**발표 시간:** 20분 + Q&A 5분  
**슬라이드 수:** 15장 (백업 슬라이드 포함)

## 🏗️ 발표 구조 (7섹션)

1. **Problem Definition & Research Objectives** (2 슬라이드)
   - Industrial Challenge
   - Research Innovation & Approach

2. **System Architecture & Components** (2 슬라이드)
   - Hardware Architecture (TikZ 다이어그램)
   - Software Stack & Integration

3. **Hydrodynamic Analysis & Modeling** (2 슬라이드)
   - Theoretical Foundation
   - Theory vs. Reality: The 1,420% Deviation

4. **Control System Design** (2 슬라이드)
   - Adaptive Control Architecture
   - Mathematical Control Formulation

5. **Experimental Results & Performance** (3 슬라이드)
   - Experimental Design & Protocol
   - Key Experimental Results
   - Performance Benchmarking

6. **System Optimization & Advanced Features** (2 슬라이드)
   - Volume Compensation Discovery
   - AI-Enhanced Control Features

7. **Conclusion & Future Directions** (2 슬라이드)
   - Research Contributions & Impact
   - Thank You (Standout slide)

## 📊 핵심 성과 데이터

- **정밀도 개선:** ±5% → ±0.4% (20배 개선)
- **성공률:** 99.7% (1000회 테스트)
- **응답시간:** Sub-10초
- **경제적 효과:** 연간 $2.3M 절약 가능

## 🔧 컴파일 방법

### WSL Ubuntu 환경에서:
```bash
cd /home/jack/mtheme/doosan_precision_control
pdflatex main.tex
# 또는
xelatex main.tex  # 폰트 최적화된 버전
```

### Overleaf에서 사용 시:
1. 전체 폴더를 ZIP으로 압축
2. Overleaf에 업로드
3. Compiler를 XeLaTeX 또는 pdfLaTeX로 설정
4. main.tex 컴파일

## 🎨 커스터마이징

### 테마 옵션 변경:
```latex
% 다크 모드
\metroset{background=dark}

% 진행률 바 위치
\metroset{progressbar=frametitle}  % 제목에
\metroset{progressbar=foot}        % 하단에

% 슬라이드 번호 형식
\metroset{numbering=fraction}      # 1/15 형식
\metroset{numbering=counter}       # 1 형식
\metroset{numbering=none}          # 번호 없음
```

## 📋 TODO 리스트

### 완료된 항목:
- ✅ 전체 발표 구조 및 내용
- ✅ TikZ 시스템 아키텍처 다이어그램
- ✅ 핵심 수식 5개 정리
- ✅ 실험 결과 테이블
- ✅ Metropolis 테마 적용

### 추가 작업 필요:
- 🔶 성능 비교 차트 (pgfplots)
- 🔶 로봇 사진 및 실험 장면 이미지
- 🔶 Before/After 비교 시각화
- 🔶 백업 슬라이드 상세 데이터

## 🎯 핵심 메시지

1. **Opening Hook:** "F&B 산업 ±5% 오차로 연간 $2.3M 손실"
2. **Core Innovation:** "20배 정밀도 개선 + 완전 자동화"
3. **Technical Depth:** "이론-실측 1,420% 편차 극복"
4. **Practical Impact:** "즉시 산업 적용 가능한 솔루션"
5. **Closing Impact:** "액체 혼합 산업의 패러다임 변화"

## 📞 지원

문제 발생 시:
1. 컴파일 에러 → main.tex의 패키지 로드 확인
2. 그래프 오류 → pgfplots 버전 확인 (compat=1.15)
3. 이미지 누락 → figures/ 폴더 경로 확인
4. 폰트 문제 → pdfLaTeX 대신 XeLaTeX 사용

---

**준비 완료!** 이제 컴파일하여 전문적인 발표자료를 확인해보세요.
