#!/bin/bash

# フォントファイルを整理するスクリプト
# 使用方法: ./prepare_fonts.sh

echo "📁 フォントファイルの整理を開始します..."

# fontsフォルダが存在するか確認
if [ ! -d "fonts" ]; then
    echo "❌ fontsフォルダが見つかりません"
    exit 1
fi

# フォントファイルの数をカウント
font_count=$(find fonts -type f \( -name "*.woff2" -o -name "*.woff" -o -name "*.ttf" -o -name "*.otf" \) | wc -l | tr -d ' ')

if [ "$font_count" -eq 0 ]; then
    echo "⚠️  fontsフォルダにフォントファイルが見つかりません"
    echo "   フォントファイル（.woff2, .woff, .ttf, .otf）をfontsフォルダに配置してください"
    exit 1
fi

echo "✅ $font_count 個のフォントファイルが見つかりました"
echo ""
echo "📋 見つかったフォントファイル:"
find fonts -type f \( -name "*.woff2" -o -name "*.woff" -o -name "*.ttf" -o -name "*.otf" \) | while read file; do
    filename=$(basename "$file")
    size=$(ls -lh "$file" | awk '{print $5}')
    echo "   - $filename ($size)"
done

echo ""
echo "✨ 準備完了！"
echo ""
echo "次のステップ:"
echo "1. GitHubリポジトリを作成（Publicに設定）"
echo "2. このフォルダの内容をアップロード"
echo "3. 各フォントファイルのRaw URLを取得"
echo "4. Figma Makeで使用"
echo ""
echo "詳細は GITHUB_UPLOAD_GUIDE.md を参照してください"

