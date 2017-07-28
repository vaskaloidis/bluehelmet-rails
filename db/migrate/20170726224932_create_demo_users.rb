class CreateDemoUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :demo_users do |t|

      t.timestamps
    end
  end
end
