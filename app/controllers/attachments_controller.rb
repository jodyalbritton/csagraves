class AttachmentsController < ApplicationController
	def index
		
	end 

	def new
		@plot = Plot.friendly.find(params[:plot_id])
	  @cemetery = Cemetery.friendly.find(params[:cemetery_id])
    @attachment = Attachment.new
	end

	def create
	   if params[:plot_id]

      @plot = Plot.friendly.find(params[:plot_id])
      @cemetery = Cemetery.find(@plot.cemetery)
      @attachment = @plot.attachments.create(attachment_params)
    else 
      @attachment = Attachment.create(attachment_params)
    end
   respond_to do |format|
      if @attachment.save
        format.html { redirect_to cemetery_plot_path(@cemetery, @plot), notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @plot }
      else
        format.html { render :new }
        format.json { render json: @plot.errors, status: :unprocessable_entity }
      end
    end
  end
  
   def destroy
    @plot = Plot.friendly.find(params[:plot_id])
    @attachment = Attachment.find(params[:id])
    @attachment.destroy
    respond_to do |format|
      format.html { redirect_to cemetery_plot_path(@plot.cemetery, @plot) }
      format.json { head :no_content }
    end
  end
  def attachment_params
    params.require(:attachment).permit(:photo, :about, :user_id, :imageable_id, :imageable_type)
  end

end
