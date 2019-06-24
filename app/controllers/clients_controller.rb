class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
    respond_to :js
  end

  def edit
    respond_to :js
  end

  def create
    @client = Client.new(client_params)
    @client.save
    respond_to :js
  end

  def update
    @client.update(client_params)
    respond_to :js
  end

  def destroy
    @client.destroy
    respond_to :js
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:name, :cpf, :data_nascimento, :telefone, :email, :logradouro, :cep, :bairro, :complemento, :cidade, :estado)
  end
end
