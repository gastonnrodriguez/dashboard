class PrioridadesController < ApplicationController
  before_action :set_prioridade, only: [:show, :edit, :update, :destroy]

  # GET /prioridades
  # GET /prioridades.json
  def index
    @prioridades = Prioridade.all
  end

  # GET /prioridades/1
  # GET /prioridades/1.json
  def show
  end

  # GET /prioridades/new
  def new
    @prioridade = Prioridade.new
  end

  # GET /prioridades/1/edit
  def edit
  end

  # POST /prioridades
  # POST /prioridades.json
  def create
    @prioridade = Prioridade.new(prioridade_params)

    respond_to do |format|
      if @prioridade.save
        format.html { redirect_to @prioridade, notice: 'Prioridade was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prioridade }
      else
        format.html { render action: 'new' }
        format.json { render json: @prioridade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prioridades/1
  # PATCH/PUT /prioridades/1.json
  def update
    respond_to do |format|
      if @prioridade.update(prioridade_params)
        format.html { redirect_to @prioridade, notice: 'Prioridade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prioridade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prioridades/1
  # DELETE /prioridades/1.json
  def destroy
    @prioridade.destroy
    respond_to do |format|
      format.html { redirect_to prioridades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prioridade
      @prioridade = Prioridade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prioridade_params
      params.require(:prioridade).permit(:nombre, :descripcion)
    end
end
