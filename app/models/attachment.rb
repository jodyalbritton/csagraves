class Attachment < ActiveRecord::Base
  belongs_to :user
  belongs_to :imageable, polymorphic: true

  has_attached_file :photo, :styles => { :medium => "300x300>",:small=> "150x150", :thumb => "50x50>" }, :default_url =>":style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/



end
