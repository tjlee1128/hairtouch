class CreateHairs < ActiveRecord::Migration[5.0]
  def change
    create_table :hairs do |t|
      t.references :designer, index: true, foreign_key: true
      t.references :mainregion, index: true, foreign_key: true
      t.references :subregion, index: true, foreign_key: true
      t.references :haircategorycode, index: true, foreign_key: true
      t.references :haircategory, index: true, foreign_key: true
      t.text :title
      t.text :subtitle
      t.text :detail

      t.timestamps
    end
  end
end
