require 'rails_helper'

RSpec.describe Meal, type: :model do
  before do
    @meal = FactoryBot.build(:meal)
  end

  describe '食事記録投稿機能' do
    context '食事記録投稿がうまくいくとき' do
      it "全ての項目が存在すれば登録できる" do
        expect(@meal).to be_valid
      end
    end

    context '食事記録投稿がうまくいかないとき' do
      it "画像が空だと登録できない" do
        @meal.image = nil
        @meal.valid?
        expect(@meal.errors.full_messages).to include("Image can't be blank")
      end
      it "食事記録名が空では登録できない" do
        @meal.meal_title = ""
        @meal.valid?
        expect(@meal.errors.full_messages).to include("Meal title can't be blank")
      end
      it "食事記録のコメントが空では登録できない" do
        @meal.meal_comment = ""
        @meal.valid?
        expect(@meal.errors.full_messages).to include("Meal comment can't be blank")
      end
      it "好みの情報が空では登録できない" do
        @meal.taste_id = 1
        @meal.valid?
        expect(@meal.errors.full_messages).to include("Taste can't be blank")
      end
      it "食事時間の情報が空では登録できない" do
        @meal.meal_time_id = 1
        @meal.valid?
        expect(@meal.errors.full_messages).to include("Meal time can't be blank")
      end
      it "日記の投稿日が空では登録できない" do
        @meal.meal_day = ""
        @meal.valid?
        expect(@meal.errors.full_messages).to include("Meal day can't be blank")
      end
    end
  end
end
