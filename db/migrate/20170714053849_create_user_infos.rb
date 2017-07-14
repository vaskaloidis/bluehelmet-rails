class CreateUserInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :user_infos do |t|
      t.string :name
      t.string :value
      t.integer :user_id, foreign_key: true

      t.timestamps
    end
  end
end
