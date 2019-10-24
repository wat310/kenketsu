class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :inspection_method, null: false
      t.string :donation_day, null: false
      t.integer :ALT
      t.integer :GTP
      t.float :TP
      t.float :ALB
      t.float :AperG
      t.integer :CHOL
      t.float :GA
      t.integer :RBC
      t.float :Hb
      t.float :Ht
      t.float :MCV
      t.float :MCH
      t.float :MCHC
      t.integer :WBC
      t.float :PLT
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
