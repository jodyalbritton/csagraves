class CemeteriesController < ApplicationController
    before_filter :authenticate_user!,
    :only => [:destroy, :update, :edit, :create, :new]

  
  before_action :set_cemetery, only: [:show, :edit, :update, :destroy]
 
  # GET /cemeteries
  # GET /cemeteries.json
  def index
    @cemeteries = Cemetery.all.order(:name)
  end

  # GET /cemeteries/1
  # GET /cemeteries/1.json
  def show
        @comments = @cemetery.comment_threads.order('created_at desc')
        @new_comment = Comment.build_from(@cemetery, current_user, "")
  end

  # GET /cemeteries/new
  def new
    @cemetery = Cemetery.new
  end

  # GET /cemeteries/1/edit
  def edit
  end

  # POST /cemeteries
  # POST /cemeteries.json
  def create
    @cemetery = Cemetery.new(cemetery_params)

    respond_to do |format|
      if @cemetery.save
        format.html { redirect_to @cemetery, notice: 'Cemetery was successfully created.' }
        format.json { render :show, status: :created, location: @cemetery }
      else
        format.html { render :new }
        format.json { render json: @cemetery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cemeteries/1
  # PATCH/PUT /cemeteries/1.json
  def update
    respond_to do |format|
      if @cemetery.update(cemetery_params)
        format.html { redirect_to @cemetery, notice: 'Cemetery was successfully updated.' }
        format.json { render :show, status: :ok, location: @cemetery }
      else
        format.html { render :edit }
        format.json { render json: @cemetery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cemeteries/1
  # DELETE /cemeteries/1.json
  def destroy
    @cemetery.destroy
    respond_to do |format|
      format.html { redirect_to cemeteries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cemetery
      @cemetery = Cemetery.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cemetery_params
      params.require(:cemetery).permit(:name, :address, :address_two, :city, :state, :zip, :url, :phone, :description, :logo,:latitude, :longitude)
    end
end
