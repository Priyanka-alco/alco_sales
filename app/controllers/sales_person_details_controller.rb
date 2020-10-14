class SalesPersonDetailsController < ApplicationController
  before_action :set_sales_person_detail, only: [:show, :update, :destroy]

  # GET /sales_person_details
  # GET /sales_person_details.json
  def index
    @sales_person_details = SalesPersonDetail.all
  end

  # GET /sales_person_details/1
  # GET /sales_person_details/1.json
  def show
  end

  def sales_login
    data = {}
    result = {}
    data['email_id'] = params['email_id']
    phone_number  = params['phone_number']
    password = params['password']
    sales_person_detail = SalesPersonDetail.get_sales_person_detail(data)
    if sales_person_detail
      if password == sales_person_detail[0].password
        result['data'] = sales_person_detail
        SalesPersonLogin.loggin(sales_person_detail[0]) # login history of sales person
        result['message'] = "Login Successfully"
      else
        result['message'] = "Please Enter Valid email Id"
      end
      result['status'] = 200
    else
      result['status'] = 300
      result['message'] = "Please Enter Valid email Id"
    end
    render :json => result
  end

  # POST /sales_person_details
  # POST /sales_person_details.json
  def create
    @sales_person_detail = SalesPersonDetail.new(sales_person_detail_params)

    if @sales_person_detail.save
      render :show, status: :created, location: @sales_person_detail
    else
      render json: @sales_person_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sales_person_details/1
  # PATCH/PUT /sales_person_details/1.json
  def update
    if @sales_person_detail.update(sales_person_detail_params)
      render :show, status: :ok, location: @sales_person_detail
    else
      render json: @sales_person_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sales_person_details/1
  # DELETE /sales_person_details/1.json
  def destroy
    @sales_person_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_person_detail
      @sales_person_detail = SalesPersonDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sales_person_detail_params
      params.require(:sales_person_detail).permit(:first_name, :last_name, :phone_no, :whatapp_number, :email_id, :password, :status)
    end
end
