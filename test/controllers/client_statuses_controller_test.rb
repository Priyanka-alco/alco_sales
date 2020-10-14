require 'test_helper'

class ClientStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_status = client_statuses(:one)
  end

  test "should get index" do
    get client_statuses_url, as: :json
    assert_response :success
  end

  test "should create client_status" do
    assert_difference('ClientStatus.count') do
      post client_statuses_url, params: { client_status: { status: @client_status.status, status_name: @client_status.status_name } }, as: :json
    end

    assert_response 201
  end

  test "should show client_status" do
    get client_status_url(@client_status), as: :json
    assert_response :success
  end

  test "should update client_status" do
    patch client_status_url(@client_status), params: { client_status: { status: @client_status.status, status_name: @client_status.status_name } }, as: :json
    assert_response 200
  end

  test "should destroy client_status" do
    assert_difference('ClientStatus.count', -1) do
      delete client_status_url(@client_status), as: :json
    end

    assert_response 204
  end
end
