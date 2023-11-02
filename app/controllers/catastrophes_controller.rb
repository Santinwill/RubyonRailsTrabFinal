class CatastrophesController < ApplicationController
  before_action :set_catastrophe, only: %i[ show edit update destroy ]

  # GET /catastrophes or /catastrophes.json
  def index
    @catastrophes = Catastrophe.all
  end

  # GET /catastrophes/1 or /catastrophes/1.json
  def show
  end

  # GET /catastrophes/new
  def new
    @catastrophe = Catastrophe.new
  end

  # GET /catastrophes/1/edit
  def edit
  end

  # POST /catastrophes or /catastrophes.json
  def create
    @catastrophe = Catastrophe.new(catastrophe_params)

    respond_to do |format|
      if @catastrophe.save
        format.html { redirect_to catastrophe_url(@catastrophe), notice: "Catastrophe was successfully created." }
        format.json { render :show, status: :created, location: @catastrophe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @catastrophe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catastrophes/1 or /catastrophes/1.json
  def update
    respond_to do |format|
      if @catastrophe.update(catastrophe_params)
        format.html { redirect_to catastrophe_url(@catastrophe), notice: "Catastrophe was successfully updated." }
        format.json { render :show, status: :ok, location: @catastrophe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @catastrophe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catastrophes/1 or /catastrophes/1.json
  def destroy
    @catastrophe.destroy

    respond_to do |format|
      format.html { redirect_to catastrophes_url, notice: "Catastrophe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catastrophe
      @catastrophe = Catastrophe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def catastrophe_params
      params.require(:catastrophe).permit(:catastrophe_code, :name, :degree_of_emergency)
    end
end
