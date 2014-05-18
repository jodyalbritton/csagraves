class Plot < ActiveRecord::Base
   resourcify
   include Authority::Abilities
   include Elasticsearch::Model
   include Elasticsearch::Model::Callbacks
   Plot.import

  extend FriendlyId
  friendly_id :full_name, use: :slugged

  
  belongs_to :cemetery
  belongs_to :created_by


  has_many :attachments, as: :imageable 

  def full_name 
    self.first_name+" "+self.middle_name+" "+self.last_name
  end 
  

  

end
