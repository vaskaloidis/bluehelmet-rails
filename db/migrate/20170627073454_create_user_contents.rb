class CreateUserContents < ActiveRecord::Migration[5.0]
  def change
    create_table :user_contents do |t|
      t.belongs_to :user, index: true
      t.belongs_to :content, index: true
      t.boolean :sticky

      t.timestamps
    end
  end
end
