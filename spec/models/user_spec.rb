require 'rails_helper'

describe User do
  describe '#create' do
    context 'can save' do # 保存できる時

      it "ニックネームが8文字の時保存できる" do
        expect(build(:user, nickname: "abcdefgh")).to be_valid
      end

      it "パスワードが7文字の時保存できる" do
        expect(build(:user, password: "1234567")).to be_valid
      end

      it "パスワードが15文字の時保存できる" do
        pass = "a" * 15
        expect(build(:user, password: pass, password_confirmation: pass)).to be_valid
      end

      it "パスワードと再確認が同じ時保存できる" do
        expect(build(:user, password: "1234567", password_confirmation: "1234567")).to be_valid
      end

    end

    context 'can not save' do  # 保存できない時

      it "ニックネームが空欄だと登録できない" do
        user = build(:user, nickname: "")
        user.valid?
        expect(user.errors[:nickname]).to include("ニックネームを入力してください")
      end

      it "パスワードが空欄だと登録できない" do
        user = build(:user, password: "")
        user.valid?
        expect(user.errors[:password]).to include("を入力してください")
      end

      it "メールアドレスが空欄だと登録できない" do
        user = build(:user, email: "")
        user.valid?
        expect(user.errors[:email]).to include("メールアドレスを入力してください")
      end

      it "ニックネームが9文字だと登録できない" do
        name = "a" * 9
        user = build(:user, nickname: name)
        user.valid?
        expect(user.errors[:nickname]).to include("ニックネームは8文字以内で入力してください")
      end

      it "パスワードが6文字だと登録できない" do
        pass = "a" * 6
        user = build(:user, password: pass)
        user.valid?
        expect(user.errors[:password]).to include("は7文字以上で入力してください")
      end

      it "パスワードが16文字だと登録できない" do
        pass = "a" * 16
        user = build(:user, password: pass)
        user.valid?
        expect(user.errors[:password]).to include("は15文字以内で入力してください")
      end

      it "パスワードと再確認が一致しないと登録できない" do
        pass = "a" * 7
        user = build(:user, password: pass, password_confirmation: "aaa")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("とパスワードが一致しません")
      end

      it "パスワード再確認が空欄だと登録できない" do
        pass = "a" * 7
        user = build(:user, password: pass, password_confirmation: "")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("とパスワードが一致しません")
      end

      it "emailが@を含まないと登録不可" do
        user = build(:user, email: "aaaaa")
        user.valid?
        expect(user.errors[:email]).to include("このメールアドレスは不正な値です")
      end

      it "emailが@を含まないと登録不可" do
        user = build(:user, email: "aaaaa")
        user.valid?
        expect(user.errors[:email]).to include("このメールアドレスは不正な値です")
      end

      it "emailの@の前に文字がないと登録不可" do
        user = build(:user, email: "@aaa")
        user.valid?
        expect(user.errors[:email]).to include("このメールアドレスは不正な値です")
      end

      it "emailの@の後に文字がないと登録不可" do
        user = build(:user, email: "aaa@")
        user.valid?
        expect(user.errors[:email]).to include("このメールアドレスは不正な値です")
      end

      it "emailに英数字と記号以外の文字が含まれると登録不可" do
        user = build(:user, email: "アイウエオ@gmail.com")
        user.valid?
        expect(user.errors[:email]).to include("このメールアドレスは不正な値です")
      end

      it "ニックネームが重複すると登録できない" do
        user = create(:user)
        another_user = build(:user, nickname: "test")
        another_user.valid?
        expect(another_user.errors[:nickname]).to include("「test」はすでに存在します")
      end

      it "メールアドレスが重複すると登録できない" do
        user = create(:user)
        another_user = build(:user, email: "kkk@gmail.com")
        another_user.valid?
        expect(another_user.errors[:email]).to include("このメールアドレスはすでに存在します")
      end

    end
  end
end