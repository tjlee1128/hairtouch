class AddMainregionIdToShop < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :mainregion_id, :integer
  end
end
