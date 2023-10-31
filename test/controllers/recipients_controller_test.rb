require 'test_helper'

class RecipientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipient = recipients(:one)
  end

  test "should get index" do
    get recipients_url
    assert_response :success
  end

  test "should get new" do
    get new_recipient_url
    assert_response :success
  end

  test "should create recipient" do
    assert_difference('Recipient.count') do
      post recipients_url, params: { recipient: { basic_basket: @recipient.basic_basket, family_quantity: @recipient.family_quantity, liter_of_water: @recipient.liter_of_water, measure: @recipient.measure, tile: @recipient.tile, unit_of_measurement: @recipient.unit_of_measurement } }
    end

    assert_redirected_to recipient_url(Recipient.last)
  end

  test "should show recipient" do
    get recipient_url(@recipient)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipient_url(@recipient)
    assert_response :success
  end

  test "should update recipient" do
    patch recipient_url(@recipient), params: { recipient: { basic_basket: @recipient.basic_basket, family_quantity: @recipient.family_quantity, liter_of_water: @recipient.liter_of_water, measure: @recipient.measure, tile: @recipient.tile, unit_of_measurement: @recipient.unit_of_measurement } }
    assert_redirected_to recipient_url(@recipient)
  end

  test "should destroy recipient" do
    assert_difference('Recipient.count', -1) do
      delete recipient_url(@recipient)
    end

    assert_redirected_to recipients_url
  end
end
