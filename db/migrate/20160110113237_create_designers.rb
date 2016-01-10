class CreateDesigners < ActiveRecord::Migration[5.0]
  def change
    create_table :designers do |t|
      t.references :shop, index: true, foreign_key: true
      t.text :name
      t.text :phone
      t.text :start_time
      t.text :end_time
      t.integer :reservation_type
      t.text :main_image

      t.timestamps
    end
  end
end
