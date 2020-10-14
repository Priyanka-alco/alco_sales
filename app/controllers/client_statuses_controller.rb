class ClientStatusesController < ApplicationController
  before_action :set_client_status, only: [:show, :update, :destroy]

  # GET /client_statuses
  # GET /client_statuses.json
  def index
    @client_statuses = ClientStatus.all
  end

  # GET /client_statuses/1
  # GET /client_statuses/1.json
  def show
  end

  # POST /client_statuses
  # POST /client_statuses.json
  def create
    @client_status = ClientStatus.new(client_status_params)

    if @client_status.save
      render :show, status: :created, location: @client_status
    else
      render json: @client_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /client_statuses/1
  # PATCH/PUT /client_statuses/1.json
  def update
    if @client_status.update(client_status_params)
      render :show, status: :ok, location: @client_status
    else
      render json: @client_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /client_statuses/1
  # DELETE /client_statuses/1.json
  def destroy
    @client_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_status
      @client_status = ClientStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_status_params
      params.require(:client_status).permit(:status_name, :status)
    end
end
