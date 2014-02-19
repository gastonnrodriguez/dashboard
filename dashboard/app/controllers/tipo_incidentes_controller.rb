class TipoIncidentesController < ApplicationController
  before_action :set_tipo_incidente, only: [:show, :edit, :update, :destroy]

  # GET /tipo_incidentes
  # GET /tipo_incidentes.json
  def index
    @tipo_incidentes = TipoIncidente.all
  end

  # GET /tipo_incidentes/1
  # GET /tipo_incidentes/1.json
  def show
  end

  # GET /tipo_incidentes/new
  def new
    @tipo_incidente = TipoIncidente.new
  end

  # GET /tipo_incidentes/1/edit
  def edit
  end

  # POST /tipo_incidentes
  # POST /tipo_incidentes.json
  def create
    @tipo_incidente = TipoIncidente.new(tipo_incidente_params)

    respond_to do |format|
      if @tipo_incidente.save
        format.html { redirect_to @tipo_incidente, notice: 'Tipo incidente was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipo_incidente }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_incidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_incidentes/1
  # PATCH/PUT /tipo_incidentes/1.json
  def update
    respond_to do |format|
      if @tipo_incidente.update(tipo_incidente_params)
        format.html { redirect_to @tipo_incidente, notice: 'Tipo incidente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_incidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_incidentes/1
  # DELETE /tipo_incidentes/1.json
  def destroy
    @tipo_incidente.destroy
    respond_to do |format|
      format.html { redirect_to tipo_incidentes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_incidente
      @tipo_incidente = TipoIncidente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_incidente_params
      params.require(:tipo_incidente).permit(:nombre, :descripcion)
    end
end
