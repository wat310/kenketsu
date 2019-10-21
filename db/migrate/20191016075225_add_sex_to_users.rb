class AddSexToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :sex, :string
    change_column :users, :sex, :string, {null: false}
  end

  def down
    remove_column :users, :sex
  end
end
