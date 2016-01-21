class CreateHairimages < ActiveRecord::Migration[5.0]
  def change
    create_table :hairimages do |t|
      t.references :hair, index: true, foreign_key: true

      t.timestamps
    end
  end
end
