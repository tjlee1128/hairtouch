class CreateShopreviews < ActiveRecord::Migration[5.0]
  def change
    create_table :shopreviews do |t|
      t.references :shop, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true
      t.text :detail
      t.text :image
      t.float :grade

      t.timestamps
    end
  end
end
