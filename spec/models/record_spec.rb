require 'rails_helper'

describe "Record" do
  describe '#create' do
    context 'can not save (blank)' do  # 空欄で保存できない時

      it "献血方法が空欄だと登録できない" do
        record = build(:record, inspection_method: "")
        record.valid?
        expect(record.errors[:inspection_method]).to include("を入力してください")
      end

      it "献血日が空欄だと登録できない" do
        record = build(:record, donation_day: "")
        record.valid?
        expect(record.errors[:donation_day]).to include("を入力してください")
      end

      it "ALTが空欄だと登録できない" do
        record = build(:record, ALT: "")
        record.valid?
        expect(record.errors[:ALT]).to include("ALTの数値を入力してください")
      end

      it "GTPが空欄だと登録できない" do
        record = build(:record, GTP: "")
        record.valid?
        expect(record.errors[:GTP]).to include("γ-GTPの数値を入力してください")
      end

      it "TPが空欄だと登録できない" do
        record = build(:record, TP: "")
        record.valid?
        expect(record.errors[:TP]).to include("総蛋白の数値を入力してください")
      end

      it "ALBが空欄だと登録できない" do
        record = build(:record, ALB: "")
        record.valid?
        expect(record.errors[:ALB]).to include("アルブミンの数値を入力してください")
      end

      it "AperGが空欄だと登録できない" do
        record = build(:record, AperG: "")
        record.valid?
        expect(record.errors[:AperG]).to include("アルブミン対グロブリン比の数値を入力してください")
      end

      it "CHOLが空欄だと登録できない" do
        record = build(:record, CHOL: "")
        record.valid?
        expect(record.errors[:CHOL]).to include("コレステロールの数値を入力してください")
      end

      it "GAが空欄だと登録できない" do
        record = build(:record, GA: "")
        record.valid?
        expect(record.errors[:GA]).to include("グリコアルブミンの数値を入力してください")
      end

      it "RBCが空欄だと登録できない" do
        record = build(:record, RBC: "")
        record.valid?
        expect(record.errors[:RBC]).to include("赤血球数の数値を入力してください")
      end

      it "Hbが空欄だと登録できない" do
        record = build(:record, Hb: "")
        record.valid?
        expect(record.errors[:Hb]).to include("ヘモグロビン量の数値を入力してください")
      end

      it "Htが空欄だと登録できない" do
        record = build(:record, Ht: "")
        record.valid?
        expect(record.errors[:Ht]).to include("ヘマトクリット量の数値を入力してください")
      end

      it "MCVが空欄だと登録できない" do
        record = build(:record, MCV: "")
        record.valid?
        expect(record.errors[:MCV]).to include("平均赤血球容積の数値を入力してください")
      end

      it "MCHが空欄だと登録できない" do
        record = build(:record, MCH: "")
        record.valid?
        expect(record.errors[:MCH]).to include("平均赤血球ヘモグロビン量の数値を入力してください")
      end

      it "MCHCが空欄だと登録できない" do
        record = build(:record, MCHC: "")
        record.valid?
        expect(record.errors[:MCHC]).to include("平均赤血球ヘモグロビン濃度の数値を入力してください")
      end

      it "WBCが空欄だと登録できない" do
        record = build(:record, WBC: "")
        record.valid?
        expect(record.errors[:WBC]).to include("白血球数の数値を入力してください")
      end

      it "PLTが空欄だと登録できない" do
        record = build(:record, PLT: "")
        record.valid?
        expect(record.errors[:PLT]).to include("血小板数の数値を入力してください")
      end

    end

    context 'can not save (not number)' do  # 数値以外で保存できない時

      it "ALTが数字以外だと登録できない" do
        record = build(:record, ALT: "a")
        record.valid?
        expect(record.errors[:ALT]).to include("数値で入力してください")
      end

      it "GTPが数字以外だと登録できない" do
        record = build(:record, GTP: "a")
        record.valid?
        expect(record.errors[:GTP]).to include("数値で入力してください")
      end

      it "TPが数字以外だと登録できない" do
        record = build(:record, TP: "a")
        record.valid?
        expect(record.errors[:TP]).to include("数値で入力してください")
      end

      it "ALBが数字以外だと登録できない" do
        record = build(:record, ALB: "a")
        record.valid?
        expect(record.errors[:ALB]).to include("数値で入力してください")
      end

      it "AperGが数字以外だと登録できない" do
        record = build(:record, AperG: "a")
        record.valid?
        expect(record.errors[:AperG]).to include("数値で入力してください")
      end

      it "CHOLが数字以外だと登録できない" do
        record = build(:record, CHOL: "a")
        record.valid?
        expect(record.errors[:CHOL]).to include("数値で入力してください")
      end

      it "GAが数字以外だと登録できない" do
        record = build(:record, GA: "a")
        record.valid?
        expect(record.errors[:GA]).to include("数値で入力してください")
      end

      it "RBCが数字以外だと登録できない" do
        record = build(:record, RBC: "a")
        record.valid?
        expect(record.errors[:RBC]).to include("数値で入力してください")
      end

      it "Hbが数字以外だと登録できない" do
        record = build(:record, Hb: "a")
        record.valid?
        expect(record.errors[:Hb]).to include("数値で入力してください")
      end

      it "Htが数字以外だと登録できない" do
        record = build(:record, Ht: "a")
        record.valid?
        expect(record.errors[:Ht]).to include("数値で入力してください")
      end

      it "MCVが数字以外だと登録できない" do
        record = build(:record, MCV: "a")
        record.valid?
        expect(record.errors[:MCV]).to include("数値で入力してください")
      end

      it "MCHが数字以外だと登録できない" do
        record = build(:record, MCH: "a")
        record.valid?
        expect(record.errors[:MCH]).to include("数値で入力してください")
      end

      it "MCHCが数字以外だと登録できない" do
        record = build(:record, MCHC: "a")
        record.valid?
        expect(record.errors[:MCHC]).to include("数値で入力してください")
      end

      it "WBCが数字以外だと登録できない" do
        record = build(:record, WBC: "a")
        record.valid?
        expect(record.errors[:WBC]).to include("数値で入力してください")
      end

      it "PLTが数字以外だと登録できない" do
        record = build(:record, PLT: "a")
        record.valid?
        expect(record.errors[:PLT]).to include("数値で入力してください")
      end

    end

    context 'can not save (not integer)' do  # 整数以外で保存できない時

      it "ALTが整数以外だと登録できない" do
        record = build(:record, ALT: 1.1)
        record.valid?
        expect(record.errors[:ALT]).to include("整数で入力してください")
      end

      it "GTPが整数以外だと登録できない" do
        record = build(:record, GTP: 1.1)
        record.valid?
        expect(record.errors[:GTP]).to include("整数で入力してください")
      end

      it "CHOLが整数以外だと登録できない" do
        record = build(:record, CHOL: 1.1)
        record.valid?
        expect(record.errors[:CHOL]).to include("整数で入力してください")
      end

      it "RBCが整数以外だと登録できない" do
        record = build(:record, RBC: 1.1)
        record.valid?
        expect(record.errors[:RBC]).to include("整数で入力してください")
      end

      it "WBCが整数以外だと登録できない" do
        record = build(:record, WBC: 1.1)
        record.valid?
        expect(record.errors[:WBC]).to include("整数で入力してください")
      end

    end
  end
end