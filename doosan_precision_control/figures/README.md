# 📸 발표자료 이미지 가이드

## 🎯 필요한 이미지 목록

### **1. 시스템 전체 사진**
- **파일명:** `system_overview.jpg`
- **내용:** Doosan M0609 로봇 + 주전자 + 로드셀 설정
- **권장 해상도:** 1920x1080 (16:9 비율)
- **용도:** 시스템 소개 슬라이드

### **2. 실험 진행 장면**
- **파일명:** `experiment_in_action.jpg`
- **내용:** 로봇이 주전자를 기울이며 물을 따르는 모습
- **권장 해상도:** 1920x1080
- **용도:** 실험 결과 섹션

### **3. 정밀도 비교 차트** (생성 예정)
- **파일명:** `precision_comparison.pdf`
- **내용:** Before/After 정밀도 비교 (±5% vs ±0.4%)
- **형식:** 벡터 그래픽 (PDF 권장)
- **용도:** 성과 강조

### **4. 유량-각도 관계 그래프** (생성 예정)
- **파일명:** `flow_angle_relationship.pdf`
- **내용:** 실험 데이터 기반 회귀 분석 결과
- **형식:** pgfplots로 생성된 PDF
- **용도:** 유체역학 분석 섹션

### **5. 제어 성능 레이더 차트** (생성 예정)
- **파일명:** `performance_radar.pdf`
- **내용:** 정밀도, 속도, 안정성, 재현성 비교
- **형식:** TikZ 생성 PDF
- **용도:** 벤치마킹 섹션

## 🎨 이미지 최적화 가이드

### **해상도 기준:**
- **사진:** 1920x1080 (16:9) 또는 1200x675
- **차트/그래프:** 벡터 형식 (PDF, SVG)
- **스크린샷:** 원본 해상도 유지

### **파일 형식:**
- **사진:** JPG (압축률 85-95%)
- **다이어그램:** PDF (벡터)
- **스크린샷:** PNG (무손실)

### **명명 규칙:**
```
카테고리_설명_번호.확장자
예: robot_setup_01.jpg, chart_precision_comparison.pdf
```

## 🔧 이미지 생성 방법

### **pgfplots 차트 생성:**
```latex
\begin{tikzpicture}
\begin{axis}[
    xlabel={Target Concentration (\%)},
    ylabel={Achieved Accuracy (\%)},
    legend pos=north west,
    grid=major
]
\addplot coordinates {
    (5, 0.4) (8, 0.4) (10, 0.3) (12, 0.3) (15, 0.2)
};
\addlegend{Our System}
\end{axis}
\end{tikzpicture}
```

### **TikZ 다이어그램 (이미 main.tex에 포함됨):**
- 시스템 아키텍처
- 제어 흐름도
- 센서 배치도

## 📁 이미지 배치 방법

### **LaTeX에서 사용:**
```latex
% 단일 이미지
\includegraphics[width=0.8\textwidth]{system_overview}

% 이미지와 텍스트 병렬
\begin{columns}
\column{0.6\textwidth}
텍스트 내용...
\column{0.4\textwidth}
\includegraphics[width=\textwidth]{experiment_scene}
\end{columns}

% 서브 그림 (여러 이미지)
\begin{figure}
\begin{subfigure}{0.45\textwidth}
\includegraphics[width=\textwidth]{before_optimization}
\caption{Before}
\end{subfigure}
\begin{subfigure}{0.45\textwidth}
\includegraphics[width=\textwidth]{after_optimization}
\caption{After}
\end{subfigure}
\end{figure}
```

## 🎯 우선순위

### **1순위 (필수):**
- ✅ TikZ 다이어그램 (코드로 생성됨)
- ⭕ 시스템 전체 사진
- ⭕ 실험 진행 장면

### **2순위 (권장):**
- ⭕ 정밀도 비교 차트
- ⭕ 성능 레이더 차트

### **3순위 (선택):**
- ⭕ 세부 하드웨어 사진
- ⭕ UI 스크린샷

## 💡 임시 대안

이미지가 없을 경우 텍스트와 색상으로 대체:

```latex
\begin{alertblock}{System Photo}
\centering
\textbf{Doosan M0609 Precision Control Setup}\\
\textcolor{gray}{[실제 시스템 사진이 여기에 표시됩니다]}\\
Robot + Teapot + Loadcell + Control System
\end{alertblock}
```

---

**참고:** 현재 main.tex는 이미지 없이도 완전히 컴파일 가능하도록 구성되어 있습니다.
이미지를 추가하면 더욱 전문적인 발표자료가 됩니다.
