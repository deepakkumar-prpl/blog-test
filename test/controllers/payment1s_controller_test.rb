require "test_helper"

class Payment1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment1 = payment1s(:one)
  end

  test "should get index" do
    get payment1s_url
    assert_response :success
  end

  test "should get new" do
    get new_payment1_url
    assert_response :success
  end

  test "should create payment1" do
    assert_difference("Payment1.count") do
      post payment1s_url, params: { payment1: { amount: @payment1.amount, currency: @payment1.currency, description: @payment1.description } }
    end

    assert_redirected_to payment1_url(Payment1.last)
  end

  test "should show payment1" do
    get payment1_url(@payment1)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment1_url(@payment1)
    assert_response :success
  end

  test "should update payment1" do
    patch payment1_url(@payment1), params: { payment1: { amount: @payment1.amount, currency: @payment1.currency, description: @payment1.description } }
    assert_redirected_to payment1_url(@payment1)
  end

  test "should destroy payment1" do
    assert_difference("Payment1.count", -1) do
      delete payment1_url(@payment1)
    end

    assert_redirected_to payment1s_url
  end
end
