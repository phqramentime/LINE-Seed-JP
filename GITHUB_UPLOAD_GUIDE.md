# GitHubアップロード手順ガイド

このガイドでは、フォントファイルをGitHubにアップロードしてFigma Makeで使用する手順を説明します。

## 前提条件

- GitHubアカウントを持っていること（無料で作成可能）
- このフォルダにフォントファイルが配置されていること

## 手順

### 1. GitHubリポジトリの作成

1. [GitHub](https://github.com)にログイン
2. 右上の「+」ボタンをクリック → 「New repository」を選択
3. リポジトリ名を入力（例: `portfolio-fonts`）
4. **「Public」を選択**（重要：Figma MakeでRaw URLを使用するため）
5. 「Add a README file」のチェックは外す（既にREADME.mdがあるため）
6. 「Create repository」をクリック

### 2. ファイルのアップロード

#### 方法A: GitHubのWebインターフェースを使用（推奨）

1. 作成したリポジトリのページで「uploading an existing file」をクリック
2. `fonts`フォルダ内のフォントファイルをドラッグ&ドロップ
3. コミットメッセージを入力（例: "Add font files"）
4. 「Commit changes」をクリック

#### 方法B: Gitコマンドを使用

```bash
cd /Users/user/portfolio
git init
git add .
git commit -m "Add font files"
git branch -M main
git remote add origin https://github.com/username/repo-name.git
git push -u origin main
```

### 3. Raw URLの取得

1. リポジトリのページで、`fonts`フォルダを開く
2. 使用したいフォントファイルをクリック
3. ファイル表示画面で「Raw」ボタンをクリック
4. ブラウザのアドレスバーに表示されるURLをコピー
   - 例: `https://raw.githubusercontent.com/username/repo-name/main/fonts/LINESeedJP_OTF_Rg.woff2`

### 4. Figma Makeでの使用

1. Figma Makeのプロジェクトを開く
2. フォント設定のセクションで、取得したRaw URLを入力
3. フォントが正しく読み込まれることを確認

## トラブルシューティング

### Raw URLが表示されない場合
- リポジトリがPublicになっているか確認
- ファイルが正しくアップロードされているか確認

### フォントが読み込まれない場合
- URLが正しくコピーされているか確認（スペースや改行が入っていないか）
- ブラウザでRaw URLに直接アクセスして、ファイルがダウンロードできるか確認

