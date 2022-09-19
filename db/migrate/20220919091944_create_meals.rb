class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :meal_title, null: false
      t.text :meal_comment, null: false
      t.integer :taste_id, null: false
      t.integer :meal_time_id, null: false
      t.date :meal_day, null: false
      t.references :user,   null: false, foreign_key: true

      t.timestamps
    end
  end
end
