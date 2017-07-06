class AddDefaultToRole < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :role, :string, default: "customer"
  end
end
