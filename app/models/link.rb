class Link < ActiveRecord::Base
	belongs_to :plot

	validates_presence_of :url, :title
	
end
