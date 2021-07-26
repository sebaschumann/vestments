class VestmentsController < ApplicationController
  before_action :set_vestment, only: %i[ show edit update destroy ]

  # GET /vestments or /vestments.json
  def index
    @vestments = Vestment.all
    @vestments = @vestments.joins(:host).where(["first_name LIKE :filter OR last_name LIKE :filter", :filter => "%" + params[:filter] + "%"]) unless params[:filter].blank?
    @vestments = @vestments.joins(:garment).where([" description LIKE :filter2 ", :filter2 => "%" + params[:filter2] + "%"]) unless params[:filter2].blank?
    @vestments = @vestments.joins(:emmision).where([" number LIKE :filter3", :filter3 => "%" + params[:filter3] + "%"]) unless params[:filter3].blank?
  end






  # GET /vestments/1 or /vestments/1.json
  def show
  end

  # GET /vestments/new
  def new
    @vestment = Vestment.new
  end

  # GET /vestments/1/edit
  def edit
  end

  # POST /vestments or /vestments.json
  def create
    @vestment = Vestment.new(vestment_params)

    respond_to do |format|
      if @vestment.save
        format.html { redirect_to @vestment, notice: "Vestment was successfully created." }
        format.json { render :show, status: :created, location: @vestment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vestment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vestments/1 or /vestments/1.json
  def update
    respond_to do |format|
      if @vestment.update(vestment_params)
        format.html { redirect_to @vestment, notice: "Vestment was successfully updated." }
        format.json { render :show, status: :ok, location: @vestment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vestment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vestments/1 or /vestments/1.json
  def destroy
    @vestment.destroy
    respond_to do |format|
      format.html { redirect_to vestments_url, notice: "Vestment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vestment
      @vestment = Vestment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vestment_params
      params.require(:vestment).permit(:emmision_id, :host_id, :garment_id)
    end
end
