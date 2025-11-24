# ポートフォリオ - フォント設定

このフォルダはFigma Makeで使用するフォントファイルを管理するためのものです。

## フォルダ構造

```
portfolio/
├── fonts/          # フォントファイルをここに配置
└── README.md       # このファイル
```

## 使用方法

1. フォントファイル（.woff2, .woff, .ttf, .otf）を `fonts/` フォルダに配置してください
2. フォントファイルを配置したら、このプロジェクトをGitHubにアップロードします
3. GitHubで各フォントファイルの「Raw」URLを取得して、Figma Makeで使用します

## Figma Makeでの使用方法

1. GitHubリポジトリを作成（publicに設定）
2. このフォルダの内容をアップロード
3. 各フォントファイルを開いて「Raw」ボタンをクリック
4. URLをコピー（例: `https://raw.githubusercontent.com/username/repo/main/fonts/LINESeedJP_OTF_Rg.woff2`）
5. Figma MakeでそのURLを使用

