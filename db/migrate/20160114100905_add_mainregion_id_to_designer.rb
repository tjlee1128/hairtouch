class AddMainregionIdToDesigner < ActiveRecord::Migration[5.0]
  def change
    add_column :designers, :mainregion_id, :integer
  end
end
