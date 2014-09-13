class LinksController < ApplicationController

	def create
	  @plot = Plot.friendly.find(params[:plot_id])
      @cemetery = Cemetery.find(@plot.cemetery)
      @link = @plot.links.create(link_params)

      respond_to do |format|
      if @link.save
        format.html { redirect_to cemetery_plot_path(@cemetery, @plot), notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: @plot }
      else
        format.html { render :new }
        format.json { render json: @plot.errors, status: :unprocessable_entity }
      end
    end
	end


	private

	def link_params
    params.require(:link).permit(:url, :title, :description)
  	end
end
