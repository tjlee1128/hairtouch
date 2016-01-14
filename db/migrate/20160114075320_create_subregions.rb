class CreateSubregions < ActiveRecord::Migration[5.0]
  def change
    create_table :subregions do |t|
      t.references :mainregion, index: true, foreign_key: true
      t.text :name

      t.timestamps
    end
  end
end
