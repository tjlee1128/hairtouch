class CreateHaircategories < ActiveRecord::Migration[5.0]
  def change
    create_table :haircategories do |t|
      t.references :haircategorycode, index: true, foreign_key: true
      t.text :name

      t.timestamps
    end
  end
end
