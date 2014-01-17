class CategoriaEquiposController < ApplicationController
  before_action :set_categoria_equipo, only: [:show, :edit, :update, :destroy]

  # GET /categoria_equipos
  # GET /categoria_equipos.json
  def index
    @categoria_equipos = CategoriaEquipo.all
  end

  #GET /categoria_equipos/:id/estaciones
  def estaciones()
   #@prueba = :categoria_equipo
   #@concentradors = CategoriaEquipo.joins('INNER JOIN concentradors ON concentradors.CategoriaEquipo_id = categoria_equipos.id')
   #@concentradors = Concentrador.find(:all, :conditions=>["concentradors.CategoriaEquipo_id=categoria_equipos.id"])
   #@concentradors = Concentrador.where('concentradors.CategoriaEquipo_id=categoria_equipos.id')
   #@concentradors = Concentrador.joins('INNER JOIN categoria_equipos ON concentradors.CategoriaEquipo_id = categoria_equipos.id')
   @concentradors = Concentrador.find_by_sql('SELECT concentradors.nombre FROM concentradors,categoria_equipos WHERE concentradors.CategoriaEquipo_id = categoria_equipos.id')
  end

  # GET /categoria_equipos/1
  # GET /categoria_equipos/1.json
  def show
  end

  # GET /categoria_equipos/new
  def new
    @categoria_equipo = CategoriaEquipo.new
  end

  # GET /categoria_equipos/1/edit
  def edit
  end

  # POST /categoria_equipos
  # POST /categoria_equipos.json
  def create
    @categoria_equipo = CategoriaEquipo.new(categoria_equipo_params)

    respond_to do |format|
      if @categoria_equipo.save
        format.html { redirect_to @categoria_equipo, notice: 'Categoria equipo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @categoria_equipo }
      else
        format.html { render action: 'new' }
        format.json { render json: @categoria_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria_equipos/1
  # PATCH/PUT /categoria_equipos/1.json
  def update
    respond_to do |format|
      if @categoria_equipo.update(categoria_equipo_params)
        format.html { redirect_to @categoria_equipo, notice: 'Categoria equipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @categoria_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_equipos/1
  # DELETE /categoria_equipos/1.json
  def destroy
    @categoria_equipo.destroy
    respond_to do |format|
      format.html { redirect_to categoria_equipos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_equipo
      @categoria_equipo = CategoriaEquipo.find(params[:id])
   # rescue ActiveRecord::RecordNotFound
    #  flash[:notice] = 'Ese objeto no existe'
     # redirect_to :action => 'estaciones'
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoria_equipo_params
      params.require(:categoria_equipo).permit(:nombre, :descripcion)
    end
end
