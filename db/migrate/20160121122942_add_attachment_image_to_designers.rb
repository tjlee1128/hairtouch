class AddAttachmentImageToDesigners < ActiveRecord::Migration
  def self.up
    change_table :designers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :designers, :image
  end
end
