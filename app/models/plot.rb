class Plot < ActiveRecord::Base
  belongs_to :cemetery
  belongs_to :created_by

  has_many :attachments, as: :imageable 
end
