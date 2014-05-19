class Cemetery < ActiveRecord::Base
	resourcify
    acts_as_commentable
    include Authority::Abilities
    extend FriendlyId
    friendly_id :name, use: :slugged
	has_many :plots
	
	has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "50x50>" }, :default_url =>":style/missing.png"
    validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
    after_validation 
            if :latitude != nil 
                :reverse_geocode
            else 
                :geocode 
            end


    geocoded_by :full_street_address   # can also be an IP address

    reverse_geocoded_by :latitude, :longitude do |obj,results|
      if geo = results.first
        foo = geo.address.split(',')
        obj.address = foo[0]
        obj.city    = geo.city
        obj.zip = geo.postal_code
        obj.state = geo.state
      end
end
after_validation :reverse_geocode
    
    def full_street_address 
    	[address, address_two, city, state, zip].compact.join(', ')
    end 
end
