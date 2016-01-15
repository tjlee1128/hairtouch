class CreateHaircategorycodes < ActiveRecord::Migration[5.0]
  def change
    create_table :haircategorycodes do |t|
      t.text :name

      t.timestamps
    end
  end
end
