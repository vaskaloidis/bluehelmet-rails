class CreateWorkCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :work_categories do |t|
      t.string :name
      t.string :htmlId

      t.timestamps
    end
  end
end
