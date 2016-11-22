class AddAttachmentImageToReports < ActiveRecord::Migration
  def self.up
    change_table :reports do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :reports, :image
  end
end
