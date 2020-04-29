class AddUserIdToExternals < ActiveRecord::Migration[6.0]
  def change
    add_column :externals, :user_id, :integer
  end
end
