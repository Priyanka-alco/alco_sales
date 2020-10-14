require 'test_helper'

class ClientTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_type = client_types(:one)
  end

  test "should get index" do
    get client_types_url, as: :json
    assert_response :success
  end

  test "should create client_type" do
    assert_difference('ClientType.count') do
      post client_types_url, params: { client_type: { category: @client_type.category, status: @client_type.status } }, as: :json
    end

    assert_response 201
  end

  test "should show client_type" do
    get client_type_url(@client_type), as: :json
    assert_response :success
  end

  test "should update client_type" do
    patch client_type_url(@client_type), params: { client_type: { category: @client_type.category, status: @client_type.status } }, as: :json
    assert_response 200
  end

  test "should destroy client_type" do
    assert_difference('ClientType.count', -1) do
      delete client_type_url(@client_type), as: :json
    end

    assert_response 204
  end
end
