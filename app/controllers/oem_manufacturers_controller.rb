class OemManufacturersController < ApplicationController
  before_action :set_oem_manufacturer, only: %i[ show edit update destroy ]

  # GET /oem_manufacturers or /oem_manufacturers.json
  def index
    @oem_manufacturers = OemManufacturer.all
  end

  # GET /oem_manufacturers/1 or /oem_manufacturers/1.json
  def show
  end

  # GET /oem_manufacturers/new
  def new
    @oem_manufacturer = OemManufacturer.new
  end

  # GET /oem_manufacturers/1/edit
  def edit
  end

  # POST /oem_manufacturers or /oem_manufacturers.json
  def create
    @oem_manufacturer = OemManufacturer.new(oem_manufacturer_params)

    respond_to do |format|
      if @oem_manufacturer.save
        format.html { redirect_to @oem_manufacturer, notice: "Oem manufacturer was successfully created." }
        format.json { render :show, status: :created, location: @oem_manufacturer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oem_manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oem_manufacturers/1 or /oem_manufacturers/1.json
  def update
    respond_to do |format|
      if @oem_manufacturer.update(oem_manufacturer_params)
        format.html { redirect_to @oem_manufacturer, notice: "Oem manufacturer was successfully updated." }
        format.json { render :show, status: :ok, location: @oem_manufacturer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @oem_manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oem_manufacturers/1 or /oem_manufacturers/1.json
  def destroy
    @oem_manufacturer.destroy!

    respond_to do |format|
      format.html { redirect_to oem_manufacturers_path, status: :see_other, notice: "Oem manufacturer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oem_manufacturer
      @oem_manufacturer = OemManufacturer.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def oem_manufacturer_params
      params.expect(oem_manufacturer: [ :manufacturerID, :name, :contactDetails, :location ])
    end
end
