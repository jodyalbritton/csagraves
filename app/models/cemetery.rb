class Cemetery < ActiveRecord::Base
	has_many :plots
	
	has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "50x50>" }, :default_url => "/assets/:style/missing.png"
    validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
    after_validation :geocode          # auto-fetch coordinates

    geocoded_by :full_street_address   # can also be an IP address
    
    def full_street_address 
    	[address, address_two, city, state, zip].compact.join(', ')
    end 
end
