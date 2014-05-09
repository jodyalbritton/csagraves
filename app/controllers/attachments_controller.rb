class AttachmentsController < ApplicationController
	def index
		
	end 

	def new
		@plot = Plot.friendly.find(params[:plot_id])
	  @cemetery = Cemetery.friendly.find(params[:cemetery_id])
    @attachment = Attachment.new
	end

	def create
	  
    
    @cemetery = Cemetery.friendly.find(params[:cemetery_id])
    @plot = Plot.friendly.find(params[:plot_id])
    @attachment = Attachment.new(attachment_params)
    @attachment.imageable_id = params[:imageable_id]
    @attachment.imageable_type = params[:imageable_type]
    @attachment.save!
   

   

    respond_to do |format|
      if @attachment.save
        format.html { redirect_to cemetery_plot_path(@cemetery, @plot), notice: 'Attachment was successfully created.' }
        format.json { render :show, status: :created, location: @attachment }
      else
        format.html { render :new }
        format.json { render json: @attachment.errors, status: :unprocessable_entity }
      end
    end
  end
  
   def destroy
    @cemetery = Cemetery.friendly.find(params[:cemetery_id])
    @plot = Plot.friendly.find(params[:plot_id])
    @attachment = Attachment.find(params[:id])
    @attachment.destroy
    respond_to do |format|
      format.html { redirect_to cemetery_plot_path(@cemetery, @plot) }
      format.json { head :no_content }
    end
  end
  def attachment_params
    params.require(:attachment).permit(:photo, :about, :user_id, :imageable_id, :imageable_type)
  end

end
