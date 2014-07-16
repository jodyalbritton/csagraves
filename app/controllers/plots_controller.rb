class PlotsController < ApplicationController
  before_action :set_plot, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!,
    :only => [:destroy, :update, :edit, :create, :new]
  authorize_actions_for ApplicationAuthorizer, :except => [:show, :index]
  # GET /plots
  # GET /plots.json
  def index
   
    if params[:cemetery_id]
    
   
    @cemetery = Cemetery.friendly.find(params[:cemetery_id])
    @plots = @cemetery.plots


    elsif params[:query]
      @plots = Plot.search(params[:query])


    else 
      @plots = Plot.all
    end 
   
  end

  # GET /plots/1
  # GET /plots/1.json
 
  def show
      @cemetery = Cemetery.friendly.find(params[:cemetery_id])
   
  end

  # GET /plots/new
  def new
    @cemetery = Cemetery.friendly.find(params[:cemetery_id])
    @plot = Plot.new
    
  end

  # GET /plots/1/edit
  def edit
     @cemetery = Cemetery.friendly.find(params[:cemetery_id])
   



     
  end

  # POST /plots
  # POST /plots.json
  def create
    if user_signed_in?
      @user = User.find(current_user)
    end 
    @cemetery = Cemetery.friendly.find(params[:cemetery_id])

    @plot = Plot.new(plot_params)
    @plot.cemetery_id = @cemetery.id

    respond_to do |format|
      if @plot.save
        format.html { redirect_to cemetery_plots_path, notice: 'Plot was successfully created.' }
        format.json { render :show, status: :created, location: @plot }
      else
        format.html { render :new }
        format.json { render json: @plot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plots/1
  # PATCH/PUT /plots/1.json
  def update
    @cemetery = Cemetery.friendly.find(params[:cemetery_id])



    respond_to do |format|
      if @plot.update(plot_params)
        format.html { redirect_to cemetery_plots_path(@cemetery), notice: 'Plot was successfully updated.' }
        format.json { render :show, status: :ok, location: @plot }
      else
        format.html { render :edit }
        format.json { render json: @plot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plots/1
  # DELETE /plots/1.json
  def destroy
    @cemetery = Cemetery.friendly.find(params[:cemetery_id])
    @plot.destroy
    respond_to do |format|
      format.html { redirect_to cemetery_plots_path(@cemetery) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plot
      @plot = Plot.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plot_params
      params.require(:plot).permit(:plot,:first_name, :middle_name, :last_name, :rank, :birth_date, 
        :death_date, :birth_location, :death_location,  :cemetery_id, :created_by_id, :approved, 
        :unit, :description, :spouse, :mother, :father, :find_a_grave, :scv_id, :fold_3_url, :rank, 
        :enlistment_date,:service_end_date,:release_from_service,:ancestry_com_url,:disposition)
    end
end
