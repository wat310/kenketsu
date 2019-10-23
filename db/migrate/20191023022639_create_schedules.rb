class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      # t.date :next_date, null: false
      t.string :next_date, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
