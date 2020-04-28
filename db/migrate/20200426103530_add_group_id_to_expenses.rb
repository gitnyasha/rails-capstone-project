class AddGroupIdToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :group_id, :integer
  end
end
