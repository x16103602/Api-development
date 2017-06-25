require 'test_helper'

class BookticketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookticket = booktickets(:one)
  end

  test "should get index" do
    get booktickets_url, as: :json
    assert_response :success
  end

  test "should create bookticket" do
    assert_difference('Bookticket.count') do
      post booktickets_url, params: { bookticket: { age: @bookticket.age, aticket: @bookticket.aticket, cost: @bookticket.cost, cticket: @bookticket.cticket, from: @bookticket.from, hour: @bookticket.hour, name: @bookticket.name, proof: @bookticket.proof, tdate: @bookticket.tdate, to: @bookticket.to } }, as: :json
    end

    assert_response 201
  end

  test "should show bookticket" do
    get bookticket_url(@bookticket), as: :json
    assert_response :success
  end

  test "should update bookticket" do
    patch bookticket_url(@bookticket), params: { bookticket: { age: @bookticket.age, aticket: @bookticket.aticket, cost: @bookticket.cost, cticket: @bookticket.cticket, from: @bookticket.from, hour: @bookticket.hour, name: @bookticket.name, proof: @bookticket.proof, tdate: @bookticket.tdate, to: @bookticket.to } }, as: :json
    assert_response 200
  end

  test "should destroy bookticket" do
    assert_difference('Bookticket.count', -1) do
      delete bookticket_url(@bookticket), as: :json
    end

    assert_response 204
  end
end
