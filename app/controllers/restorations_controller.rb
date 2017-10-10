class RestorationsController < ApplicationController
  before_action :set_restoration, only: [:show, :edit, :update, :destroy]

  # GET /restorations
  # GET /restorations.json
  def index
    @restorations = Restoration.all
  end

  # GET /restorations/1
  # GET /restorations/1.json
  def show
  end

  # GET /restorations/new
  def new
    @restoration = Restoration.new
  end

  # GET /restorations/1/edit
  def edit
  end

  # POST /restorations
  # POST /restorations.json
  def create
    @restoration = Restoration.new(restoration_params)

    respond_to do |format|
      if @restoration.save
        format.html { redirect_to @restoration, notice: 'Restoration was successfully created.' }
        format.json { render :show, status: :created, location: @restoration }
      else
        format.html { render :new }
        format.json { render json: @restoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restorations/1
  # PATCH/PUT /restorations/1.json
  def update
    respond_to do |format|
      if @restoration.update(restoration_params)
        format.html { redirect_to @restoration, notice: 'Restoration was successfully updated.' }
        format.json { render :show, status: :ok, location: @restoration }
      else
        format.html { render :edit }
        format.json { render json: @restoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restorations/1
  # DELETE /restorations/1.json
  def destroy
    @restoration.destroy
    respond_to do |format|
      format.html { redirect_to restorations_url, notice: 'Restoration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restoration
      @restoration = Restoration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restoration_params
      params.require(:restoration).permit(:reason, :responsible, :since, :until)
    end
end
