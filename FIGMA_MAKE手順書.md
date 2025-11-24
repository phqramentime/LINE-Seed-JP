# Figma Makeでフォントを使う手順書（デザイナー向け）

## 📋 全体の流れ
1. GitHubでリポジトリを開く
2. フォントファイルを探す
3. Raw URLをコピーする
4. Figma Makeで使用する

---

## ステップ1: GitHubでリポジトリを開く

### 方法A: GitHub Desktopから開く
1. GitHub Desktopの画面で「View on GitHub」ボタンをクリック
2. ブラウザでGitHubのページが開きます

### 方法B: ブラウザで直接開く
1. ブラウザを開く（Chrome、Safariなど）
2. アドレスバーに以下を入力（`your-username`の部分をあなたのGitHubユーザー名に置き換える）：
   ```
   https://github.com/your-username/LINE-Seed-JP
   ```
3. Enterキーを押す

---

## ステップ2: フォントファイルを見つける

GitHubのページが開いたら：

1. 画面の真ん中あたりに「fonts」というフォルダがあるはずです
2. 「fonts」をクリックして開く
3. 中にフォントファイルがたくさん並んでいます

---

## ステップ3: 使いたいフォントファイルを選ぶ

フォントファイルの名前の意味：
- **LINESeedJP_OTF_Th** = Thin（細い）
- **LINESeedJP_OTF_Rg** = Regular（普通）
- **LINESeedJP_OTF_Bd** = Bold（太い）
- **LINESeedJP_OTF_Eb** = Extra Bold（とても太い）

**推奨**: `.woff2` のファイルを選んでください（ファイルサイズが小さくて速いです）

---

## ステップ4: Raw URLをコピーする

1. 使いたいフォントファイル（例：`LINESeedJP_OTF_Rg.woff2`）をクリック
2. ファイルの中身が表示されます
3. 画面の右上あたりに「Raw」というボタンがあります
4. 「Raw」ボタンをクリック
5. ブラウザのアドレスバーに長いURLが表示されます（例：`https://raw.githubusercontent.com/...`）
6. このURLを全部選択してコピー（⌘+C または 右クリック→コピー）

**重要**: このURLがFigma Makeで使うURLです！

---

## ステップ5: 他のフォントファイルも同じようにコピー

使いたいすべてのフォント（Regular、Boldなど）について、ステップ4を繰り返します。

---

## ステップ6: Figma Makeを開く

1. Figma Makeのプロジェクトを開く
2. フォント設定の画面を探す

---

## ステップ7: Figma Makeでフォントを設定

Figma Makeの画面で：

1. フォントを設定する場所を探す（「Font」や「書体」などの項目）
2. コピーしたRaw URLを貼り付ける（⌘+V または 右クリック→貼り付け）
3. フォント名を入力（例：`LINESeedJP`）

**注意**: Figma Makeの画面によって設定方法が違うかもしれません。もしわからなければ、Figma Makeのヘルプを確認するか、設定画面のスクリーンショットを見せてください。

---

## ステップ8: フォントが正しく読み込まれたか確認

1. プレビューを表示する
2. テキストが正しいフォントで表示されているか確認

---

## ステップ9: 問題があった場合

### フォントが表示されない場合
- URLが正しくコピーされているか確認（最初から最後まで全部）
- リポジトリがPublicになっているか確認（Privateだと使えません）
- ブラウザでRaw URLに直接アクセスして、ファイルがダウンロードできるか確認

### URLが長すぎて貼り付けられない場合
- URLは全部コピーしてください（途中で切れていると動きません）

---

## ステップ10: 完了！

すべてのフォントが正しく表示されれば完了です！

---

## 💡 便利なヒント

### よく使うフォントのRaw URLをメモしておく
- Regular: `https://raw.githubusercontent.com/your-username/LINE-Seed-JP/main/fonts/LINESeedJP_OTF_Rg.woff2`
- Bold: `https://raw.githubusercontent.com/your-username/LINE-Seed-JP/main/fonts/LINESeedJP_OTF_Bd.woff2`

### すべてのフォントのURL一覧
`FONT_URLS.md` というファイルに、すべてのフォントのURLテンプレートが書いてあります。
GitHubにアップロードしたら、そのファイルも見ることができます。

---

## ❓ わからないことがあったら

1. どのステップでつまづいているか教えてください
2. スクリーンショットを見せてください
3. エラーメッセージがあれば、その内容を教えてください

