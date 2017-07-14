class CreateDemos < ActiveRecord::Migration[5.0]
  def change
    create_table :demos do |t|
      t.string :name
      t.text :description
      t.string :type
      t.string :file

      t.timestamps
    end
  end
end
