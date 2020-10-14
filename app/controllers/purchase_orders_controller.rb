class PurchaseOrdersController < ApplicationController
  before_action :set_purchase_order, only: [:show, :update, :destroy]

  # GET /purchase_orders
  # GET /purchase_orders.json
  def index
    @purchase_orders = PurchaseOrder.all
  end

  # GET /purchase_orders/1
  # GET /purchase_orders/1.json
  def show
  end

  # POST /purchase_orders
  # POST /purchase_orders.json
  def create
    @purchase_order = PurchaseOrder.new(purchase_order_params)

    if @purchase_order.save
      render :show, status: :created, location: @purchase_order
    else
      render json: @purchase_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /purchase_orders/1
  # PATCH/PUT /purchase_orders/1.json
  def update
    if @purchase_order.update(purchase_order_params)
      render :show, status: :ok, location: @purchase_order
    else
      render json: @purchase_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /purchase_orders/1
  # DELETE /purchase_orders/1.json
  def destroy
    @purchase_order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_order
      @purchase_order = PurchaseOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchase_order_params
      params.require(:purchase_order).permit(:customer_id, :sales_person_id, :preferred_contact, :status_id, :subscription_type, :subscription_id, :status)
    end
end
