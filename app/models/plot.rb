class Plot < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  Plot.import
  belongs_to :cemetery
  belongs_to :created_by


  has_many :attachments, as: :imageable 

  def full_name 
    self.first_name+""+self.middle_name+""+self.last_name
  end 
  def as_indexed_json(options={})
  self.as_json(
    include: { cemeteries: { only: :name}
             })
  end

  

end
