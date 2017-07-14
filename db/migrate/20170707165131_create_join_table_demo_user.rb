class CreateJoinTableDemoUser < ActiveRecord::Migration[5.0]
  def change
    create_join_table :demos, :users do |t|
      t.index [:demo_id, :user_id]
      t.index [:user_id, :demo_id]
    end
  end
end
