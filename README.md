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
