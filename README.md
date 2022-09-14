## diariesテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|title       |string    |null: false                    |
|comment     |text      |null: false                    |
|date        |integer   |null: false                    |
|user        |references|null: false, foreign_key: true |
<!-- imageカラムはactive_storage導入時に自動でテーブルなどが生成される -->

### Association
belongs_to :user

## mealsテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|title       |string    |null: false                    |
|comment     |text      |null: false                    |
|date        |integer   |null: false                    |
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
|parent            |string |null: false               |
|babyname          |string |null: false               |
|gender            |string |null: false               |
|birthday          |date   |null: false               |

<!-- ユーザー管理機能で使用するdeviseの設定で、emailカラムには一意性制約がかかっている為、emailにunique: trueを記載している -->

## healthsテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|health      |string    |null: false                    |
|temperature |string    |null: false                    |
|comment     |text      |null: false                    |
|date        |string    |null: false                    |
|user        |references|null: false, foreign_key: true |
<!-- foreign_key: trueによって、「誰の情報なのか」を紐づけることができる -->

### Association
belongs_to :user

## calendarsテーブル

|Column      |Type      |Options                        |
|------------|----------|-------------------------------|
|comment     |text      |null: false                    |
|date        |string    |null: false                    |
|user        |references|null: false, foreign_key: true |

### Association
belongs_to :user
