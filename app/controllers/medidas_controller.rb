class MedidasController < ApplicationController
  before_action :set_medida, only: [:show, :edit, :update, :destroy]

  # GET /medidas
  # GET /medidas.json
  def index
    @medidas = Medida.all
  end

  # GET /medidas/1
  # GET /medidas/1.json
  def show
  end

  # GET /medidas/new
  def new
    @medida = Medida.new
  end

  # GET /medidas/1/edit
  def edit
  end

  # POST /medidas
  # POST /medidas.json
  def create
    @medida = Medida.new(medida_params)

    respond_to do |format|
      if @medida.save
        format.html { redirect_to @medida, notice: 'Medida was successfully created.' }
        format.json { render action: 'show', status: :created, location: @medida }
      else
        format.html { render action: 'new' }
        format.json { render json: @medida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medidas/1
  # PATCH/PUT /medidas/1.json
  def update
    respond_to do |format|
      if @medida.update(medida_params)
        format.html { redirect_to @medida, notice: 'Medida was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @medida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medidas/1
  # DELETE /medidas/1.json
  def destroy
    @medida.destroy
    respond_to do |format|
      format.html { redirect_to medidas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medida
      @medida = Medida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medida_params
      params.require(:medida).permit(:Sensor_id, :fecha, :valor)
    end
end
