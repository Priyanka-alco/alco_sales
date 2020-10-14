require 'test_helper'

class SalesPersonDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sales_person_detail = sales_person_details(:one)
  end

  test "should get index" do
    get sales_person_details_url, as: :json
    assert_response :success
  end

  test "should create sales_person_detail" do
    assert_difference('SalesPersonDetail.count') do
      post sales_person_details_url, params: { sales_person_detail: { email_id: @sales_person_detail.email_id, first_name: @sales_person_detail.first_name, last_name: @sales_person_detail.last_name, password: @sales_person_detail.password, phone_no: @sales_person_detail.phone_no, status: @sales_person_detail.status, whatapp_number: @sales_person_detail.whatapp_number } }, as: :json
    end

    assert_response 201
  end

  test "should show sales_person_detail" do
    get sales_person_detail_url(@sales_person_detail), as: :json
    assert_response :success
  end

  test "should update sales_person_detail" do
    patch sales_person_detail_url(@sales_person_detail), params: { sales_person_detail: { email_id: @sales_person_detail.email_id, first_name: @sales_person_detail.first_name, last_name: @sales_person_detail.last_name, password: @sales_person_detail.password, phone_no: @sales_person_detail.phone_no, status: @sales_person_detail.status, whatapp_number: @sales_person_detail.whatapp_number } }, as: :json
    assert_response 200
  end

  test "should destroy sales_person_detail" do
    assert_difference('SalesPersonDetail.count', -1) do
      delete sales_person_detail_url(@sales_person_detail), as: :json
    end

    assert_response 204
  end
end
