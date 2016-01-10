class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.references :shopowner, index: true, foreign_key: true
      t.text :name
      t.text :phone
      t.text :start_time
      t.text :end_time
      t.text :holiday
      t.text :address
      t.text :main_image

      t.timestamps
    end
  end
end
