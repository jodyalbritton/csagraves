class Cemetery < ActiveRecord::Base
	has_many :plots
	
	has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "50x50>" }, :default_url => "/assets/:style/missing.png"
    validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
