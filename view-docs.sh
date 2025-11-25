#!/bin/bash

# YUMI Theme Documentation Quick Start Script
# This script helps you preview and work with the documentation

echo "🎨 YUMI Theme Documentation Helper"
echo "=================================="
echo ""

# Function to open documentation in browser
open_docs() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        open "$1"
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        xdg-open "$1"
    elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        # Windows
        start "$1"
    fi
}

# Menu
echo "What would you like to do?"
echo ""
echo "1. Open Main Documentation (index.html)"
echo "2. Open Installation Guide"
echo "3. Open Settings Reference"
echo "4. Open Sections Guide"
echo "5. Open Support & FAQ"
echo "6. Open Compliance Checklist"
echo "7. Open All Documentation Files"
echo "8. View README"
echo "9. Exit"
echo ""
read -p "Enter your choice (1-9): " choice

case $choice in
    1)
        echo "Opening Main Documentation..."
        open_docs "index.html"
        ;;
    2)
        echo "Opening Installation Guide..."
        open_docs "installation.html"
        ;;
    3)
        echo "Opening Settings Reference..."
        open_docs "settings.html"
        ;;
    4)
        echo "Opening Sections Guide..."
        open_docs "sections-guide.html"
        ;;
    5)
        echo "Opening Support & FAQ..."
        open_docs "support.html"
        ;;
    6)
        echo "Opening Compliance Checklist..."
        open_docs "compliance-checklist.html"
        ;;
    7)
        echo "Opening all documentation files..."
        open_docs "index.html"
        sleep 1
        open_docs "installation.html"
        sleep 1
        open_docs "settings.html"
        sleep 1
        open_docs "sections-guide.html"
        sleep 1
        open_docs "support.html"
        sleep 1
        open_docs "compliance-checklist.html"
        ;;
    8)
        echo "Viewing README..."
        if command -v less &> /dev/null; then
            less README.md
        else
            cat README.md
        fi
        ;;
    9)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid choice. Please run the script again."
        exit 1
        ;;
esac

echo ""
echo "✅ Done!"
echo ""
echo "💡 Tip: To view documentation offline, just open the HTML files in any browser."
echo "🖨️  To print/PDF: Open in browser and press Ctrl/Cmd + P"
echo "🌐 To host online: Upload this entire folder to a web server or GitHub Pages"
echo ""
