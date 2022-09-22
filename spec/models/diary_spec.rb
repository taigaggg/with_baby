require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '日記投稿機能' do
    context '日記投稿がうまくいくとき' do
      it "全ての項目が存在すれば登録できる" do
        expect(@diary).to be_valid
      end
    end

    context '新規投稿がうまくいかないとき' do
      it "画像が空だと登録できない" do
        @diary.image = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Image can't be blank")
      end
      it "日記名が空では登録できない" do
        @diary.diary_title = ""
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Diary title can't be blank")
      end
      it "日記のコメントが空では登録できない" do
        @diary.diary_comment = ""
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Diary comment can't be blank")
      end
      it "日記の投稿日が空では登録できない" do
        @diary.diary_day = ""
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Diary day can't be blank")
      end
    end
  end
end