class AddAttachmentImageToHairimages < ActiveRecord::Migration
  def self.up
    change_table :hairimages do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :hairimages, :image
  end
end
