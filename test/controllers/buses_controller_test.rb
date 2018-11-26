require 'test_helper'

class BusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus = buses(:one)
  end

  test "should get index" do
    get buses_url, as: :json
    assert_response :success
  end

  test "should create bus" do
    assert_difference('Bus.count') do
      post buses_url, params: { bus: { arrival_time: @bus.arrival_time, line: @bus.line, load: @bus.load, prefix: @bus.prefix, px: @bus.px, py: @bus.py } }, as: :json
    end

    assert_response 201
  end

  test "should show bus" do
    get bus_url(@bus), as: :json
    assert_response :success
  end

  test "should update bus" do
    patch bus_url(@bus), params: { bus: { arrival_time: @bus.arrival_time, line: @bus.line, load: @bus.load, prefix: @bus.prefix, px: @bus.px, py: @bus.py } }, as: :json
    assert_response 200
  end

  test "should destroy bus" do
    assert_difference('Bus.count', -1) do
      delete bus_url(@bus), as: :json
    end

    assert_response 204
  end
end
