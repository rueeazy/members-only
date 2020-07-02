class ChangeIdColumnName < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key  :posts, :user_ids
    rename_column       :posts, :user_id_id, :user_id
    add_foreign_key     :posts, :users
  end
end
