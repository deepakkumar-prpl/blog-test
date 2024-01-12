require "application_system_test_case"

class Payment1sTest < ApplicationSystemTestCase
  setup do
    @payment1 = payment1s(:one)
  end

  test "visiting the index" do
    visit payment1s_url
    assert_selector "h1", text: "Payment1s"
  end

  test "should create payment1" do
    visit payment1s_url
    click_on "New payment1"

    fill_in "Amount", with: @payment1.amount
    fill_in "Currency", with: @payment1.currency
    fill_in "Description", with: @payment1.description
    click_on "Create Payment1"

    assert_text "Payment1 was successfully created"
    click_on "Back"
  end

  test "should update Payment1" do
    visit payment1_url(@payment1)
    click_on "Edit this payment1", match: :first

    fill_in "Amount", with: @payment1.amount
    fill_in "Currency", with: @payment1.currency
    fill_in "Description", with: @payment1.description
    click_on "Update Payment1"

    assert_text "Payment1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Payment1" do
    visit payment1_url(@payment1)
    click_on "Destroy this payment1", match: :first

    assert_text "Payment1 was successfully destroyed"
  end
end
