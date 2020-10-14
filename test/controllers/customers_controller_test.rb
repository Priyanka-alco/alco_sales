require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url, as: :json
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { address: @customer.address, city_id: @customer.city_id, client_id: @customer.client_id, country_id: @customer.country_id, email_id: @customer.email_id, name: @customer.name, phone_number: @customer.phone_number, state_id: @customer.state_id, status: @customer.status, whatsapp_number: @customer.whatsapp_number, zip_code: @customer.zip_code } }, as: :json
    end

    assert_response 201
  end

  test "should show customer" do
    get customer_url(@customer), as: :json
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { address: @customer.address, city_id: @customer.city_id, client_id: @customer.client_id, country_id: @customer.country_id, email_id: @customer.email_id, name: @customer.name, phone_number: @customer.phone_number, state_id: @customer.state_id, status: @customer.status, whatsapp_number: @customer.whatsapp_number, zip_code: @customer.zip_code } }, as: :json
    assert_response 200
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer), as: :json
    end

    assert_response 204
  end
end
