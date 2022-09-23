require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録" do
    context "新規登録できるとき" do
      it '全ての情報が存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context "新規登録できないとき" do
      it "nicknameが空だと登録できない" do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end
      it 'emailが空では登録できない' do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it 'emailは@を含まないと登録できない' do
        @user.email = 'testmail'
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールは不正な値です')
      end
      it '重複したメールアドレスは登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
      end
      it 'passwordが空では登録できない' do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = 'taig5'
        @user.password_confirmation = 'taig5'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end
      it 'passwordが半角英数字混合でないと登録できない(半角英字のみ)' do
        @user.password = 'taigagg'
        @user.password_confirmation = 'taigagg'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end
      it 'passwordが半角英数字混合でないと登録できない(半角数字のみ)' do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end
      it 'passwordが半角英数字混合でないと登録できない(全角入力)' do
        @user.password = 'ABCDEF'
        @user.password_confirmation = 'ABCDEF'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it "babynameが空だと登録できない" do
        @user.babyname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("お子様の名前を入力してください")
      end
      it '生年月日が必須であること' do
        @user.birthday = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("お誕生日を入力してください")
      end
      it "ママ、パパ情報が空では登録できない" do
        @user.parent_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("ママ、パパ情報を入力してください")
      end
      it "お子さんの性別が空では登録できない" do
        @user.gender_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("お子様の性別を入力してください")
      end
    end
  end
end