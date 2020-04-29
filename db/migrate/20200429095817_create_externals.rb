class CreateExternals < ActiveRecord::Migration[6.0]
  def change
    create_table :externals do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
