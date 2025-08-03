#!/bin/bash

# Doosan Precision Control Presentation Build Script
# 사용법: ./build.sh [clean|quick|full]

PROJECT_DIR="/home/jack/mtheme/doosan_precision_control"
MAIN_FILE="main.tex"
OUTPUT_DIR="output"

cd "$PROJECT_DIR"

# 출력 디렉토리 생성
mkdir -p "$OUTPUT_DIR"

case "$1" in
    "clean")
        echo "🧹 Cleaning build files..."
        rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.fls *.fdb_latexmk *.synctex.gz
        rm -rf "$OUTPUT_DIR"/*
        echo "✅ Clean completed!"
        ;;
    
    "quick")
        echo "⚡ Quick build (pdfLaTeX)..."
        pdflatex -output-directory="$OUTPUT_DIR" "$MAIN_FILE"
        echo "✅ Quick build completed!"
        echo "📄 Output: $OUTPUT_DIR/main.pdf"
        ;;
    
    "full"|"")
        echo "🔨 Full build (XeLaTeX with bibliography)..."
        
        # First pass
        xelatex -output-directory="$OUTPUT_DIR" "$MAIN_FILE"
        
        # Bibliography (if exists)
        if [ -f "bibliography.bib" ]; then
            cd "$OUTPUT_DIR"
            bibtex main
            cd ..
        fi
        
        # Second pass
        xelatex -output-directory="$OUTPUT_DIR" "$MAIN_FILE"
        
        # Third pass (for TOC and references)
        xelatex -output-directory="$OUTPUT_DIR" "$MAIN_FILE"
        
        echo "✅ Full build completed!"
        echo "📄 Output: $OUTPUT_DIR/main.pdf"
        ;;
    
    *)
        echo "Usage: $0 [clean|quick|full]"
        echo "  clean - Remove all build files"
        echo "  quick - Fast pdfLaTeX build"
        echo "  full  - Complete XeLaTeX build (default)"
        ;;
esac

# 빌드 성공 시 PDF 뷰어로 열기 (선택사항)
if [ "$1" != "clean" ] && [ -f "$OUTPUT_DIR/main.pdf" ]; then
    echo "🎯 Build successful!"
    echo "📖 To view: evince $OUTPUT_DIR/main.pdf"
    echo "📋 Slide count: $(pdfinfo $OUTPUT_DIR/main.pdf 2>/dev/null | grep Pages | awk '{print $2}') pages"
fi
