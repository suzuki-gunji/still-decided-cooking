class AddNicknameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string, :before => :email
  end
end
