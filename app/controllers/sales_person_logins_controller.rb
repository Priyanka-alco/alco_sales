class SalesPersonLoginsController < ApplicationController
  before_action :set_sales_person_login, only: [:show, :update, :destroy]

  # GET /sales_person_logins
  # GET /sales_person_logins.json
  def index
    @sales_person_logins = SalesPersonLogin.all
  end

  # GET /sales_person_logins/1
  # GET /sales_person_logins/1.json
  def show
  end

  # POST /sales_person_logins
  # POST /sales_person_logins.json
  def create
    @sales_person_login = SalesPersonLogin.new(sales_person_login_params)

    if @sales_person_login.save
      render :show, status: :created, location: @sales_person_login
    else
      render json: @sales_person_login.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sales_person_logins/1
  # PATCH/PUT /sales_person_logins/1.json
  def update
    if @sales_person_login.update(sales_person_login_params)
      render :show, status: :ok, location: @sales_person_login
    else
      render json: @sales_person_login.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sales_person_logins/1
  # DELETE /sales_person_logins/1.json
  def destroy
    @sales_person_login.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_person_login
      @sales_person_login = SalesPersonLogin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sales_person_login_params
      params.require(:sales_person_login).permit(:sales_person_id, :ip_address, :loaction, :status)
    end
end
