# Dart 100本ノック環境構築手順

このドキュメントでは、Dartの100本ノック環境をVSCodeとGitHubを使って構築する手順をまとめています。

---

## 1. プロジェクト作成

ターミナルで以下を実行します。

```bash
mkdir dart_100_knock
cd dart_100_knock
code .
```

これで、`dart_100_knock` フォルダが作成され、VSCodeで開かれます。

---

## 2. Dartプロジェクト初期化

プロジェクトフォルダ内で Dart プロジェクトを初期化します。

```bash
dart create --force .
```

> **注意**  
> 「Directory already exists」と出たら `--force` をつけて上書きします。

---

## 3. Git初期化と最初のコミット

プロジェクトをGitで管理できるようにします。

```bash
git init
git add .
git commit -m "初回コミット"
```

---

## 4. GitHubにリポジトリ作成

ブラウザでGitHubにアクセスし、新しいリポジトリを作成します。

- リポジトリ名例：`dart_100_knock`
- **READMEファイルは作らない（空リポジトリにする）**

作成後、リポジトリURLをコピーします。

---

## 5. ローカルとGitHubを接続する

ターミナルで以下を実行します。（リポジトリURLは自分のものに置き換えてください）

```bash
git remote add origin https://github.com/あなたのアカウント名/dart_100_knock.git
git branch -M main
git push -u origin main
```

> **もしエラーが出たら：**
> 
> - `git pull --rebase origin main`
> - その後、もう一度 `git push -u origin main`

---

## 6. 完成！

これでDart 100本ノック用の開発環境が完成です！  
VSCodeとGitHubを連携した形で、どんどん問題を解いていきましょう！💪✨

---

# 📚 参考コマンドまとめ

| コマンド | 説明 |
|:---|:---|
| `git add .` | すべてのファイルをステージング |
| `git commit -m "メッセージ"` | コミット作成 |
| `git push` | GitHubにアップロード |
| `git pull --rebase origin main` | リモートの変更を取り込む（pushエラー対策） |
| `dart run` | Dartプログラムを実行する |

---

# 🚀 さあ、100本ノックを始めよう！

---

# 🛠️ 推奨エディタと拡張機能

## 推奨エディタ

- **Visual Studio Code (VSCode)**  
  DartとFlutterの開発に最も適している軽量エディタです。

[Visual Studio Code ダウンロード](https://code.visualstudio.com/)

---

## 必須・推奨拡張機能

| 拡張機能名 | 説明 |
|:---|:---|
| Dart | Dart言語サポート（必須） |
| Flutter | Flutterプロジェクト用サポート（UIプレビューなど） |
| GitLens | Git操作を強力にサポートするツール（履歴、差分確認など） |
| Bracket Pair Colorizer 2 | 括弧のペアに色をつけて見やすくする |
| Error Lens | エラーや警告を即座に見やすく表示する |

---

## 便利なショートカット

| ショートカット | 説明 |
|:---|:---|
| `Ctrl + ~` | ターミナルを開く |
| `Ctrl + Shift + P` | コマンドパレットを開く |
| `Ctrl + S` | 保存してホットリロード（Flutterの場合） |
| `F5` | デバッグ実行（Flutter/Dartでも使える） |

---

> ✨ **まずは「Dart」「Flutter」拡張だけ入れておけばすぐ始められます！**
