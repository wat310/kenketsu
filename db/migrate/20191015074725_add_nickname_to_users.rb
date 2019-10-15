class AddNicknameToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :nickname, :string
    add_column :users, :avatar, :text
    add_column :users, :message, :text
    change_column :users, :nickname, :string, {null: false}
  end

  def down
    remove_column :users, :nickname
    remove_column :users, :avatar
    remove_column :users, :nickname
  end
end
