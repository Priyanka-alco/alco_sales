require 'test_helper'

class SalesPersonLoginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sales_person_login = sales_person_logins(:one)
  end

  test "should get index" do
    get sales_person_logins_url, as: :json
    assert_response :success
  end

  test "should create sales_person_login" do
    assert_difference('SalesPersonLogin.count') do
      post sales_person_logins_url, params: { sales_person_login: { ip_address: @sales_person_login.ip_address, loaction: @sales_person_login.loaction, sales_person_id: @sales_person_login.sales_person_id, status: @sales_person_login.status } }, as: :json
    end

    assert_response 201
  end

  test "should show sales_person_login" do
    get sales_person_login_url(@sales_person_login), as: :json
    assert_response :success
  end

  test "should update sales_person_login" do
    patch sales_person_login_url(@sales_person_login), params: { sales_person_login: { ip_address: @sales_person_login.ip_address, loaction: @sales_person_login.loaction, sales_person_id: @sales_person_login.sales_person_id, status: @sales_person_login.status } }, as: :json
    assert_response 200
  end

  test "should destroy sales_person_login" do
    assert_difference('SalesPersonLogin.count', -1) do
      delete sales_person_login_url(@sales_person_login), as: :json
    end

    assert_response 204
  end
end
