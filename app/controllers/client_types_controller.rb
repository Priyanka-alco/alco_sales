class ClientTypesController < ApplicationController
  before_action :set_client_type, only: [:show, :update, :destroy]

  # GET /client_types
  # GET /client_types.json
  def index
    @client_types = ClientType.all
  end

  # GET /client_types/1
  # GET /client_types/1.json
  def show

  end

  # POST /client_types
  # POST /client_types.json
  def create
    @client_type = ClientType.new(client_type_params)

    if @client_type.save
      render :show, status: :created, location: @client_type
    else
      render json: @client_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /client_types/1
  # PATCH/PUT /client_types/1.json
  def update
    if @client_type.update(client_type_params)
      render :show, status: :ok, location: @client_type
    else
      render json: @client_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /client_types/1
  # DELETE /client_types/1.json
  def destroy
    @client_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_type
      @client_type = ClientType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_type_params
      params.require(:client_type).permit(:category, :status)
    end
end
