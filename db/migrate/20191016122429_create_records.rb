class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :inspection_method, null: false
      t.integer :donation_year, null: false
      t.integer :donation_month, null: false
      t.integer :donation_day, null: false
      t.integer :ALT
      t.integer :GTP
      t.integer :TP
      t.integer :ALB
      t.integer :AperG
      t.integer :CHOL
      t.integer :GA
      t.integer :RBC
      t.integer :Hb
      t.integer :Ht
      t.integer :MCV
      t.integer :MCH
      t.integer :MCHC
      t.integer :WBC
      t.integer :PLT
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
