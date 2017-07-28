class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :title
      t.references :work_type, foreign_key: true
      t.references :work_category, foreign_key: true
      t.text :content
      t.string :url

      t.timestamps
    end
  end
end
