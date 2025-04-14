# 🎯 Dart 100本ノック 環境構築手順（最新版）

このドキュメントでは、Dartの100本ノック環境を**VSCode**と**GitHub**を使って構築する手順をまとめています。

---

## 1. プロジェクト作成

ターミナルで以下を実行します。

```bash
mkdir dart_100_knock
cd dart_100_knock
code .
```

✅ これで `dart_100_knock` フォルダが作成され、VSCodeで開かれます。

---

## 2. Dartプロジェクト初期化

プロジェクトフォルダ内で Dart プロジェクトを初期化します。

```bash
dart create --force .
```

> 💡 **Tips**  
> 「Directory already exists」と出たら `--force` をつけて上書きします。

---

## 3. Git初期化と最初のコミット

Gitでプロジェクトを管理します。

```bash
git init
git add .
git commit -m "Initial commit"
```

---

## 4. GitHubにリポジトリ作成

GitHubで新しいリポジトリを作成します。

- リポジトリ名例：`dart_100_knock`
- **READMEは作らず空リポジトリにする**

作成したらリポジトリURLをコピー！

---

## 5. ローカルとGitHubを接続する

ターミナルで以下を実行します。

```bash
git remote add origin https://github.com/あなたのアカウント名/dart_100_knock.git
git branch -M main
git push -u origin main
```

> ❗ **エラーが出た場合**  
>  
> ```bash
> git pull --rebase origin main
> ```
> を実行してから、再度 `git push` すればOK！

---

## 6. 完成！

これでDart 100本ノック用の開発環境が完成！  
VSCode × GitHub 連携バッチリ！✨

---

# 📚 よく使うコマンドまとめ

| コマンド | 説明 |
|:---|:---|
| `git add .` | すべての変更をステージングする |
| `git commit -m "メッセージ"` | コミットを作成する |
| `git push` | GitHubにアップロードする |
| `git pull --rebase origin main` | リモートの変更を取り込む（pushエラー時） |
| `dart run` | Dartプログラムを実行する |

---

# 🚀 さあ、100本ノックを始めよう！

---

# 🛠️ 推奨エディタと拡張機能

## 推奨エディタ

- **Visual Studio Code (VSCode)**  
  Dart/Flutter開発に最適な軽量エディタです！

[Visual Studio Code をダウンロードする](https://code.visualstudio.com/)

---

## 必須・推奨拡張機能

| 拡張機能名 | 説明 |
|:---|:---|
| Dart | Dart言語の必須サポート |
| Flutter | Flutterプロジェクト向けのサポート |
| GitLens | Git履歴・差分が超見やすくなるツール |
| Bracket Pair Colorizer 2 | 括弧のペアに色を付けて見やすくする |
| Error Lens | エラーや警告を即座に強調表示する |

✅ 最初は「Dart」「Flutter」拡張だけ入れればOK！

---

## 便利なショートカット（VSCode）

| ショートカット | 説明 |
|:---|:---|
| `Ctrl + ~` | ターミナルを開く |
| `Ctrl + Shift + P` | コマンドパレットを開く |
| `Ctrl + S` | 保存（Flutterならホットリロード） |
| `F5` | デバッグ実行 |

---

> ✨ **まずは「Dart」「Flutter」の拡張機能だけインストールしてスタートしよう！**

---

# 🎉 Let's Dart 100 Knock！！
