class AddPhotoToAttachment < ActiveRecord::Migration
  def self.up
    add_attachment :attachments, :photo
  end

  def self.down
    remove_attachment :attachments, :photo
  end
end
