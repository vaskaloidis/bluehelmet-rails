class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :name
      t.string :file
      t.text :description
      t.string :type

      t.timestamps
    end
    add_index :contents, :name, unique: true
  end
end
