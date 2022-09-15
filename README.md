## diariesテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|title       |string    |null: false                    |
|comment     |text      |null: false                    |
|day         |integer   |null: false                    |
|user        |references|null: false, foreign_key: true |
<!-- imageカラムはactive_storage導入時に自動でテーブルなどが生成される -->

### Association
belongs_to :user

## mealsテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|title       |string    |null: false                    |
|comment     |text      |null: false                    |
|day         |integer   |null: false                    |
|user        |references|null: false, foreign_key: true |
<!-- imageカラムはactive_storage導入時に自動でテーブルなどが生成される -->

### Association
belongs_to :user

## usersテーブル

|Column            |Type   |Options                   |
|------------------|-------|--------------------------|
|nickname          |string |null: false               |
|email             |string |null: false, unique: true |
|encrypted_password|string |null: false               |
|baby_name         |string |null: false               |
|birthday          |date   |null: false               |

<!-- ユーザー管理機能で使用するdeviseの設定で、emailカラムには一意性制約がかかっている為、emailにunique: trueを記載している -->
<!-- 以下は、Activehashにて実装する
|parent_id    |integer |null: false |
|gender_id    |integer |null: false |
 -->

### Association
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
<!-- foreign_key: trueによって、「誰の情報なのか」を紐づけることができる -->

### Association
belongs_to :user

## calendarsテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|comment     |text      |null: false                    |
|day         |string    |null: false                    |
|user        |references|null: false, foreign_key: true |

### Association
belongs_to :user
