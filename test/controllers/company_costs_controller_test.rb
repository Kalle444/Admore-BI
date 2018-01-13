require 'test_helper'

class CompanyCostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get company_costs_index_url
    assert_response :success
  end

  test "should get new" do
    get company_costs_new_url
    assert_response :success
  end

  test "should get create" do
    get company_costs_create_url
    assert_response :success
  end

  test "should get edit" do
    get company_costs_edit_url
    assert_response :success
  end

  test "should get update" do
    get company_costs_update_url
    assert_response :success
  end

end
