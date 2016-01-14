class AddSubregionIdToDesigner < ActiveRecord::Migration[5.0]
  def change
    add_column :designers, :subregion_id, :integer
  end
end
