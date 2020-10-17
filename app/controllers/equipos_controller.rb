class EquiposController < ApplicationController
  before_action :set_equipo, only: [:show, :edit, :update, :destroy]

  # GET /equipos
  # GET /equipos.json
  def index
    @equipos = Equipo.all
  end

  # GET /equipos/1
  # GET /equipos/1.json
  def show
  end

  # GET /equipos/new
  def new
    @equipo = Equipo.new
  end

  # GET /equipos/1/edit
  def edit
  end

  # POST /equipos
  # POST /equipos.json
  def create
    @equipo = Equipo.new(equipo_params)

    respond_to do |format|
      if @equipo.save
        format.html { redirect_to @equipo, notice: 'Equipo was successfully created.' }
        format.json { render :show, status: :created, location: @equipo }
      else
        format.html { render :new }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipos/1
  # PATCH/PUT /equipos/1.json
  def update
    respond_to do |format|
      if @equipo.update(equipo_params)
        format.html { redirect_to @equipo, notice: 'Equipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipo }
      else
        format.html { render :edit }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipos/1
  # DELETE /equipos/1.json
  def destroy
    @equipo.destroy
    respond_to do |format|
      format.html { redirect_to equipos_url, notice: 'Equipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipo
      @equipo = Equipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equipo_params
      params.require(:equipo).permit(:modelo_ue, :modelo_ui, :ubicacion_ue, :ubicacion_ui, :año, :serie, :gas, :voltaje, :oficinas, :nombre_oficinas, :unidad_master, :cliente_id)
    end
end
