require 'test_helper'

class TbmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbm = tbms(:one)
  end

  test "should get index" do
    get tbms_url
    assert_response :success
  end

  test "should get new" do
    get new_tbm_url
    assert_response :success
  end

  test "should create tbm" do
    assert_difference('Tbm.count') do
      post tbms_url, params: { tbm: { add: @tbm.add, kin: @tbm.kin, name: @tbm.name } }
    end

    assert_redirected_to tbm_url(Tbm.last)
  end

  test "should show tbm" do
    get tbm_url(@tbm)
    assert_response :success
  end

  test "should get edit" do
    get edit_tbm_url(@tbm)
    assert_response :success
  end

  test "should update tbm" do
    patch tbm_url(@tbm), params: { tbm: { add: @tbm.add, kin: @tbm.kin, name: @tbm.name } }
    assert_redirected_to tbm_url(@tbm)
  end

  test "should destroy tbm" do
    assert_difference('Tbm.count', -1) do
      delete tbm_url(@tbm)
    end

    assert_redirected_to tbms_url
  end
end
