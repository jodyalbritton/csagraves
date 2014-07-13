class Plot < ActiveRecord::Base
   resourcify
   searchkick
  extend FriendlyId
  friendly_id :full_name, use: :slugged

  
  belongs_to :cemetery
  belongs_to :created_by


  has_many :attachments, as: :imageable 

  def full_name 
    self.first_name+" "+self.middle_name+" "+self.last_name
  end 
  

  

end
