# アプリケーション名
...with baby
# アプリケーション概要
子どもの日常の様子や食事の様子を日記のように保存できるアプリケーション。
# URL
https://with-baby.herokuapp.com/
# テスト用アカウント
・Basic認証パスワード：5353
・Basic認証ID：baby2994
・メールアドレス：test@test
・パスワード：test1234

# 利用方法
## ユーザー登録機能
・一覧ページから、新規登録またはログインを行うことで、一覧画面が変化するようになっている。
## 画像投稿機能付きの日常の記録
・一覧ページから、日常の記録(画像、タイトル、コメント、日付)を入力し、投稿ができる。
## 画像投稿機能付きの食事の記録
・一覧ページから、食事の記録(画像、タイトル、コメント、好み、食べた時間、日付)を入力し、投稿ができる。

# アプリケーションを作成した背景
背景として、毎日使うようなものを作成したいという思いがあった。
身近な存在である妻に相談したところ、子どもの記録を簡単に行える機能のついたアプリケーションが欲しいという要望があった。
既存のアプリを確認し、あまりない機能を追加することで付加価値をつけることにした。
# 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/15xG2Aew6_RMhoxgJ5rywZdXuu6ErdbkBXj--qRPk4_0/edit#gid=982722306)
# 実装した機能についての画像やGIFおよびその説明
・一覧画面から、ユーザーに関する一連動作が行える。
[![Image from Gyazo](https://i.gyazo.com/174ba37a490164217bc90e872b4c34c3.gif)](https://gyazo.com/174ba37a490164217bc90e872b4c34c3)
[![Image from Gyazo](https://i.gyazo.com/21fca383b0f11e95947863bd4bbbb1a3.gif)](https://gyazo.com/21fca383b0f11e95947863bd4bbbb1a3)

・一覧画面から、各記録に関する内容の投稿を画像付きで投稿できる。
[![Image from Gyazo](https://i.gyazo.com/08a78e80e44a660517c47568eaad24f2.gif)](https://gyazo.com/08a78e80e44a660517c47568eaad24f2)
[![Image from Gyazo](https://i.gyazo.com/d7851439252c004047d872bcd79cdf2d.gif)](https://gyazo.com/d7851439252c004047d872bcd79cdf2d)

・一覧画面から、投稿内容の詳細へ遷移できる。
[![Image from Gyazo](https://i.gyazo.com/611536b021b7a4eea9def8f6b6d10e9e.gif)](https://gyazo.com/611536b021b7a4eea9def8f6b6d10e9e)

・詳細ページから、投稿の編集と削除が行える。
[![Image from Gyazo](https://i.gyazo.com/073cca9f042ed34053fea4d206bed433.gif)](https://gyazo.com/073cca9f042ed34053fea4d206bed433)
[![Image from Gyazo](https://i.gyazo.com/7a7a19c526ed2531d4680dc4157c07d3.gif)](https://gyazo.com/7a7a19c526ed2531d4680dc4157c07d3)

# 実装予定の機能
上記以外の機能に関して、家族で各投稿内容を共有する実装をしていきたい。
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/3aba6096e7bdc7c582a36350cced3467.png)](https://gyazo.com/3aba6096e7bdc7c582a36350cced3467)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/acba66276787e067bcb38cd60eb84541.png)](https://gyazo.com/acba66276787e067bcb38cd60eb84541)

# 開発環境
・HTML
・CSS
・JavaScript
・Ruby
・Ruby on Rails
・Rspec
・MySQL
・AWS
・Visual Studio
・Github

# ローカルでの動作方法
% git clone
% cd with_baby
% bundle install
% yarn install

# 工夫したポイント
大きなポイントは、２つ。
1.一覧機能に２つの投稿機能を合わせた
2.ビューの配色にこだわった

ユーザーの投稿内容が一見でわかりやすいように、一覧ページにすべての投稿機能の内容を表示することにした。
また、投稿も簡単に行えるように、ボタンの配置にも工夫をした。
配色については、配色ツールをしようしてできるだけみやすいものを心がけた。
登録や投稿のボタンには行動意欲が増すオレンジを採用するなどした。

今後機能を追加するとしたら、体調を管理できる機能や、予定を管理できるカレンダー機能を追加してみたい。
また、許可したユーザーが自分の投稿を閲覧できる機能もあったら良いと思っている。

<!-- ## diariesテーブル

|Column            |Type      |Options                        |
|------------------|----------|-------------------------------|
|diary_title       |string    |null: false                    |
|diary_comment     |text      |null: false                    |
|diary_day         |date      |null: false                    |
|user              |references|null: false, foreign_key: true |
<!-- imageカラムはactive_storage導入時に自動でテーブルなどが生成される -->

<!-- ### Association
belongs_to :user

## mealsテーブル

|Column       |Type      |Options                        |
|-------------|----------|-------------------------------|
|meal_title   |string    |null: false                    |
|meal_comment |text      |null: false                    |
|meal_day     |date      |null: false                    |
|user         |references|null: false, foreign_key: true | -->
<!-- imageカラムはactive_storage導入時に自動でテーブルなどが生成される -->

<!-- 以下は、Activehashにて実装する
|taste        |integer   |null: false                    |
|meal_time    |integer   |null: false                    |
 -->
<!-- ### Association
belongs_to :users

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
