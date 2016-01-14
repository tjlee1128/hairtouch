class AddSubregionIdToShop < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :subregion_id, :integer
  end
end
