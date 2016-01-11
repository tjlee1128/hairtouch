class CreateDesignerreviews < ActiveRecord::Migration[5.0]
  def change
    create_table :designerreviews do |t|
      t.references :designer, index: true, foreign_key: true
      t.references :member, index: true, foreign_key: true
      t.text :detail
      t.text :image
      t.float :grade

      t.timestamps
    end
  end
end
