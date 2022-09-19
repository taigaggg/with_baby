class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :diary_title,      null: false
      t.text :diary_comment,      null: false
      t.date :diary_day,       null: false
      t.references :user,   null: false, foreign_key: true

      t.timestamps
    end
  end
end
