class GarmentTypesController < ApplicationController
  before_action :set_garment_type, only: %i[ show edit update destroy ]

  # GET /garment_types or /garment_types.json
  def index
    @garment_types = GarmentType.all
  end

  # GET /garment_types/1 or /garment_types/1.json
  def show
  end

  # GET /garment_types/new
  def new
    @garment_type = GarmentType.new
  end

  # GET /garment_types/1/edit
  def edit
  end

  # POST /garment_types or /garment_types.json
  def create
    @garment_type = GarmentType.new(garment_type_params)

    respond_to do |format|
      if @garment_type.save
        format.html { redirect_to @garment_type, notice: "Garment type was successfully created." }
        format.json { render :show, status: :created, location: @garment_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @garment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garment_types/1 or /garment_types/1.json
  def update
    respond_to do |format|
      if @garment_type.update(garment_type_params)
        format.html { redirect_to @garment_type, notice: "Garment type was successfully updated." }
        format.json { render :show, status: :ok, location: @garment_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @garment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garment_types/1 or /garment_types/1.json
  def destroy
    @garment_type.destroy
    respond_to do |format|
      format.html { redirect_to garment_types_url, notice: "Garment type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garment_type
      @garment_type = GarmentType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def garment_type_params
      params.require(:garment_type).permit(:name)
    end
end
