# Red Donation
## アクセス
http://18.176.225.39

お試しでログインしたいときは、
メールアドレス：aaa@gmail.com
パスワード：1234567
でログイン可能です。

## 概要
献血の記録、閲覧ができるアプリケーションを目指しています。

## 制作背景
駅前で献血の呼びかけをしているのをみて、気軽に献血に触れられるようなアプリケーションを作れないかと思い作成しました。
ただし、日本赤十字社で「ラブラッド」という献血のアプリケーションがあるので、あくまで自分のこのアプリケーションは、プログラミングスクールで学んできたことを踏まえて自分なりに作成してみたものという認識にとどめておいてください。

## 機能説明
- フロントエンド
  - Haml/Sassによるマークアップ
  - Bootstrapを使用したレスポンシブデザイン
- サーバーサイド
  - ユーザー登録、サインイン機能(gem deviseを使用)
  - 献血履歴の作成
  - 献血履歴の編集
  - 献血履歴の表示
  - 日付の登録(pickadate.jsによるカレンダー)
- AWSを使用した本番環境構築
  - Capistranoを使用した自動デプロイ

## デモ
- カレンダーの表示

<!-- ![demo](https://gyazo.com/e80a28db76a3932bcae151e570838b5b/raw) -->
<img width="400" alt="demo_calendar" src="https://gyazo.com/0c4c1ccbbd82e924a5bbba54a9726106/raw">

- パスワードの表示・非表示と性別のtoggleボタン

![demo](https://gyazo.com/43128a309f1ab642d126f2fdc42763dd/raw)

- 記録一覧の非同期通信

<img width="400" alt="demo_ajax" src="https://gyazo.com/d86a69b55f267c2fbd142c62b1780c13/raw">

## 追加予定機能
- 献血の記録を2~3年分を表示(現在は直近3回分のみ)
- 家族などのグループを作成してグループ間のユーザーの記録は自由に閲覧できる機能
- テストの実装

## 工夫点
- レスポンシブデザインの実装
- 日付入力はpickadate.jsによるカレンダーで実装
- 性別の登録にはBootstrapのtoggleを採用

## 苦労した点
- レスポンシブデザイン。最初はBootstrapの扱いに慣れることができずに思い通りのビューができなかった。
- pickadate.jsの実装。