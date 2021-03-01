class AddUserIdToNews < ActiveRecord::Migration[6.1]
  def change
    add_column :news, :user_id, :reference
  end
end
