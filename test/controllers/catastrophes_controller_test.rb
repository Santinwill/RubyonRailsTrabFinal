require 'test_helper'

class CatastrophesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catastrophe = catastrophes(:one)
  end

  test "should get index" do
    get catastrophes_url
    assert_response :success
  end

  test "should get new" do
    get new_catastrophe_url
    assert_response :success
  end

  test "should create catastrophe" do
    assert_difference('Catastrophe.count') do
      post catastrophes_url, params: { catastrophe: { catastrophe_code: @catastrophe.catastrophe_code, degree_of_emergency: @catastrophe.degree_of_emergency, name: @catastrophe.name } }
    end

    assert_redirected_to catastrophe_url(Catastrophe.last)
  end

  test "should show catastrophe" do
    get catastrophe_url(@catastrophe)
    assert_response :success
  end

  test "should get edit" do
    get edit_catastrophe_url(@catastrophe)
    assert_response :success
  end

  test "should update catastrophe" do
    patch catastrophe_url(@catastrophe), params: { catastrophe: { catastrophe_code: @catastrophe.catastrophe_code, degree_of_emergency: @catastrophe.degree_of_emergency, name: @catastrophe.name } }
    assert_redirected_to catastrophe_url(@catastrophe)
  end

  test "should destroy catastrophe" do
    assert_difference('Catastrophe.count', -1) do
      delete catastrophe_url(@catastrophe)
    end

    assert_redirected_to catastrophes_url
  end
end
