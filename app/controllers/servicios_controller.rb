class ServiciosController < ApplicationController
  before_action :set_servicio, only: [:show, :edit, :update, :destroy]

  # GET /servicios
  # GET /servicios.json
  def index
    @servicios = Servicio.all
  end

  # GET /servicios/1
  # GET /servicios/1.json
  def show
  end

  # GET /servicios/new
  def new
    @servicio = Servicio.new
  end

  # GET /servicios/1/edit
  def edit
  end

  # POST /servicios
  # POST /servicios.json
  def create
    @servicio = Servicio.new(servicio_params)

    respond_to do |format|
      if @servicio.save
        format.html { redirect_to @servicio, notice: 'Servicio was successfully created.' }
        format.json { render :show, status: :created, location: @servicio }
      else
        format.html { render :new }
        format.json { render json: @servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicios/1
  # PATCH/PUT /servicios/1.json
  def update
    respond_to do |format|
      if @servicio.update(servicio_params)
        format.html { redirect_to @servicio, notice: 'Servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @servicio }
      else
        format.html { render :edit }
        format.json { render json: @servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicios/1
  # DELETE /servicios/1.json
  def destroy
    @servicio.destroy
    respond_to do |format|
      format.html { redirect_to servicios_url, notice: 'Servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicio
      @servicio = Servicio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servicio_params
      params.require(:servicio).permit(:cliente_id, :equipo_id, :enchufes, :cables, :conecciones, :estructura, :corrosion, :bases, :ventiladores, :condensador, :compresor, :evapodador, :linea_refrigetante, :aislacion, :correas, :lubricacion, :drenajes, :filtro_de_aire, :carcasa, :partida_normal, :vibraciones_y_ruido, :luces_e_indicacdores, :direccion_de_ventiladores, :nivel_de_aceite, :nivel_de_refrigerante, :pruebas_de_funcionamiento, :alarmas, :sobrecalor, :sobrecalentamiento, :presion_de_succion, :presion_de_descarga, :tarjeta_de_control, :compresor_f1, :compresor_f2, :compresor_f3, :compresor_m, :ventilador_compresor_f1, :ventilador_compresor_f2, :ventilador_compresor_f3, :ventilador_compresor_m, :ventilador_evaporador_inyeccion_f1, :ventilador_evaporador_inyeccion_f2, :ventilador_evapodar_f3, :ventilador_evaporador_m, :ventilador_retorno_f1, :ventilador_retorno_f2, :ventilador_retorno_f3, :ventilador_retorno_m, :calefactor_f1, :calefactor_f2, :calefactor_f3, :calefactor_m, :cable_poder_f1, :cable_poder_f2, :cable_poder_f3, :cable_poder_m, :tension_total_f1, :tension_total_f2, :tension_total_f3, :tension_total_m, :detalles, :insumos_repuestos, :firma_solicitante, :firma_tecnico, :imagen_1, :imagen_2, :imagen_3, :codigo_qr, :otros, :fecha, :servicio)
    end
end
