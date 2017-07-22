class CreateTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :templates do |t|
      t.string :name
      t.text :description
      t.string :purchaseUrl
      t.string :demoUrl
      t.references :TemplateType, foreign_key: true
      t.references :TemplateCategory, foreign_key: true
      t.decimal :price
      t.text :tags
      t.text :compatibleBrowsers
      t.text :bootstrapVersions

      t.timestamps
    end
  end
end

