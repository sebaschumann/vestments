class EmmisionsController < ApplicationController
  before_action :set_emmision, only: %i[ show edit update destroy ]

  # GET /emmisions or /emmisions.json
  def index
    @emmisions = Emmision.all
    @emmisions = @emmisions.joins(:vestments).where(:vestments => {:vestment_id => params[:vestment_id]}) if params[:vestment_id]
    @emmisions = @emmisions.order(:number).page(params[:page] || 1)
  end

  # GET /emmisions/1 or /emmisions/1.json
  def show
  end

  # GET /emmisions/new
  def new
    @emmision = Emmision.new
  end

  # GET /emmisions/1/edit
  def edit
  end

  # POST /emmisions or /emmisions.json
  def create
    @emmision = Emmision.new(emmision_params)

    respond_to do |format|
      if @emmision.save
        format.html { redirect_to @emmision, notice: "Emmision was successfully created." }
        format.json { render :show, status: :created, location: @emmision }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emmision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emmisions/1 or /emmisions/1.json
  def update
    respond_to do |format|
      if @emmision.update(emmision_params)
        format.html { redirect_to @emmision, notice: "Emmision was successfully updated." }
        format.json { render :show, status: :ok, location: @emmision }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emmision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emmisions/1 or /emmisions/1.json
  def destroy
    @emmision.destroy
    respond_to do |format|
      format.html { redirect_to emmisions_url, notice: "Emmision was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emmision
      @emmision = Emmision.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emmision_params
      params.require(:emmision).permit(:number, :date)
    end
end
