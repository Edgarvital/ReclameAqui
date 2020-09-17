class ReclamacaosController < ApplicationController
  before_action :get_usuario
  before_action :set_reclamacao, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:show]

  # GET /reclamacaos
  # GET /reclamacaos.json
  def index
    @reclamacaos = @usuario.reclamacaos
  end

  # GET /reclamacaos/1
  # GET /reclamacaos/1.json
  def show
  end

  # GET /reclamacaos/new
  def new
    @reclamacao = @usuario.reclamacaos.build
  end

  # GET /reclamacaos/1/edit
  def edit
  end

  # POST /reclamacaos
  # POST /reclamacaos.json
  def create
    @reclamacao = @usuario.reclamacaos.build(reclamacao_params)

    respond_to do |format|
      if @reclamacao.save
        format.html { redirect_to usuario_reclamacaos_path(@usuario), notice: 'Reclamacao was successfully created.' }
        format.json { render :show, status: :created, location: @reclamacao }
      else
        format.html { render :new }
        format.json { render json: @reclamacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reclamacaos/1
  # PATCH/PUT /reclamacaos/1.json
  def update
    respond_to do |format|
      if @reclamacao.update(reclamacao_params)
        format.html { redirect_to usuario_reclamacaos_path(@usuario), notice: 'Reclamacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @reclamacao }
      else
        format.html { render :edit }
        format.json { render json: @reclamacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reclamacaos/1
  # DELETE /reclamacaos/1.json
  def destroy
    @reclamacao.destroy
    respond_to do |format|
      format.html { redirect_to usuario_reclamacaos_path(@usuario), notice: 'Reclamacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reclamacao
      @reclamacao = @usuario.reclamacaos.find(params[:id])
    end

    def get_usuario
      @usuario = Usuario.find(params[:usuario_id])
    end

    # Only allow a list of trusted parameters through.
    def reclamacao_params
      params.require(:reclamacao).permit(:titulo, :texto, :categoria, :empresa)
    end
end
