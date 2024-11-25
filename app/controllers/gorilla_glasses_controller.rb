class GorillaGlassesController < ApplicationController
  before_action :set_gorilla_glass, only: %i[ show edit update destroy ]

  # GET /gorilla_glasses or /gorilla_glasses.json
  def index
    @gorilla_glasses = GorillaGlass.all
  end

  # GET /gorilla_glasses/1 or /gorilla_glasses/1.json
  def show
  end

  # GET /gorilla_glasses/new
  def new
    @gorilla_glass = GorillaGlass.new
  end

  # GET /gorilla_glasses/1/edit
  def edit
  end

  # POST /gorilla_glasses or /gorilla_glasses.json
  def create
    @gorilla_glass = GorillaGlass.new(gorilla_glass_params)

    respond_to do |format|
      if @gorilla_glass.save
        format.html { redirect_to @gorilla_glass, notice: "Gorilla glass was successfully created." }
        format.json { render :show, status: :created, location: @gorilla_glass }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gorilla_glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gorilla_glasses/1 or /gorilla_glasses/1.json
  def update
    respond_to do |format|
      if @gorilla_glass.update(gorilla_glass_params)
        format.html { redirect_to @gorilla_glass, notice: "Gorilla glass was successfully updated." }
        format.json { render :show, status: :ok, location: @gorilla_glass }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gorilla_glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gorilla_glasses/1 or /gorilla_glasses/1.json
  def destroy
    @gorilla_glass.destroy!

    respond_to do |format|
      format.html { redirect_to gorilla_glasses_path, status: :see_other, notice: "Gorilla glass was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gorilla_glass
      @gorilla_glass = GorillaGlass.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def gorilla_glass_params
      params.expect(gorilla_glass: [ :partID, :materialType, :dimensions, :qualityRating ])
    end
end
