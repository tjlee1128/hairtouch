class CreateMainregions < ActiveRecord::Migration[5.0]
  def change
    create_table :mainregions do |t|
      t.text :name

      t.timestamps
    end
  end
end
