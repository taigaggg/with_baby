# アプリケーション名
...with baby
# アプリケーション概要
子どもの日常の様子や食事の様子を日記のように保存できるアプリケーションである。
# URL
完成次第記載する。
# テスト用アカウント
完成次第記載する。

# 利用方法
## 画像投稿機能付きの日常の記録
・新規登録から、日常の記録(画像、タイトル、コメント)を入力することで、一覧画面から確認ができる。
## 画像投稿機能付きの食事の記録
・新規登録から、食事の記録(画像、タイトル、コメント)を入力することで、一覧画面から確認ができる。
## 健康状態の記録
・新規登録から、健康の記録(健康状態、体温、コメント)を入力することで、一覧画面から確認ができる。
## カレンダーによる予定管理機能
・カレンダーに予定を書き込み、保存することで記入した予定を一覧で確認することができる。
# アプリケーションを作成した背景
大きな背景として、毎日使うようなものを作成したいという思いがあった。
身近な存在である妻に相談したところ、子どもの記録を簡単に行える機能のついたアプリケーションが欲しいということだった。既存のアプリを確認し、それにない機能を追加することで付加価値をつけることにした。
# 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/15xG2Aew6_RMhoxgJ5rywZdXuu6ErdbkBXj--qRPk4_0/edit#gid=982722306)
# 実装した機能についての画像やGIFおよびその説明
・一覧画面から、ユーザーに関する一連動作が行える。
・一覧画面から、記録に関する内容の投稿を画像付きで投稿できる。
・一覧画面から、予定に関する内容をカレンダー機能を用いて投稿できる。
# 実装予定の機能
上記以外の機能に関して、家族で各投稿内容を共有する実装をしていきたい。
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/73bcf1b6fecf8aa96bff89c8275f1981.png)](https://gyazo.com/73bcf1b6fecf8aa96bff89c8275f1981)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/c0038bea8ee46155c0dfb5461cb2624a.png)](https://gyazo.com/c0038bea8ee46155c0dfb5461cb2624a)
# 開発環境
・フロントエンド
・バックエンド
・インフラ
・テスト
・テキストエディタ
・タスク管理

# ローカルでの動作方法
今後実装次第記載する。

# 工夫したポイント
今後実装次第記載する。

<!-- ## diariesテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|title       |string    |null: false                    |
|comment     |text      |null: false                    |
|day         |integer   |null: false                    |
|user        |references|null: false, foreign_key: true |
<!-- imageカラムはactive_storage導入時に自動でテーブルなどが生成される -->

<!-- ### Association
belongs_to :user

## mealsテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|title       |string    |null: false                    |
|comment     |text      |null: false                    |
|day         |integer   |null: false                    |
|user        |references|null: false, foreign_key: true | -->
<!-- imageカラムはactive_storage導入時に自動でテーブルなどが生成される -->

<!-- ### Association
belongs_to :user

## usersテーブル

|Column            |Type   |Options                   |
|------------------|-------|--------------------------|
|nickname          |string |null: false               |
|email             |string |null: false, unique: true |
|encrypted_password|string |null: false               |
|babyname          |string |null: false               |
|birthday          |date   |null: false               |

<!-- ユーザー管理機能で使用するdeviseの設定で、emailカラムには一意性制約がかかっている為、emailにunique: trueを記載している -->
<!-- 以下は、Activehashにて実装する
|parent_id    |integer |null: false |
|gender_id    |integer |null: false |
 -->

<!-- ### Association
has_many :diaries
has_many :meals
has_many :healths
has_many :calendars

## healthsテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|health      |string    |null: false                    |
|temperature |string    |null: false                    |
|comment     |text      |null: false                    |
|day         |string    |null: false                    |
|user        |references|null: false, foreign_key: true |
foreign_key: trueによって、「誰の情報なのか」を紐づけることができる -->

<!-- ### Association
belongs_to :user

## calendarsテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|comment     |text      |null: false                    |
|day         |string    |null: false                    |
|user        |references|null: false, foreign_key: true |

### Association
belongs_to :user --> 
