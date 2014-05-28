class AddAttachmentPortraitToPeople < ActiveRecord::Migration
  def self.up
    change_table :people do |t|
      t.attachment :portrait
    end
  end

  def self.down
    drop_attached_file :people, :portrait
  end
end
