class MapController < ApplicationController
  def index
  	@cemeteries = Cemetery.where("latitude is NOT NULL")
		@hash = Gmaps4rails.build_markers(@cemeteries) do |cemetery, marker|
  			marker.lat cemetery.latitude
  			marker.lng cemetery.longitude
  			marker.title cemetery.name
  			marker.infowindow render_to_string(:partial => "/map/info", :locals => { :cemetery => cemetery})
	    end
  end
end
