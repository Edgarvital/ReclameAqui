class SessionsController < ApplicationController

  def index
    i = 0
    @reclamacoes = []
    @usuarios = Usuario.all
    @usuarios.each do |user|
      user.reclamacaos.each do |reclam|
        @reclamacoes[i] = reclam
        i+=1
      end
    end
    return @reclamacoes
    Session.search(params[:search])
  end

  def self.search(search)
    if search!=nil
      puts search
    end
  end

  def new
  end

  def create
    @usuario = Usuario.find_by(login: params[:session][:login])
    if @usuario && @usuario.authenticate(params[:session][:password])
      sign_in
      redirect_to @usuario
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
  private
  # Only allow a list of trusted parameters through.
  def session_params
    params.require(:usuario).permit(:search, :empresa)
  end
end
