require 'test_helper'
require 'pry'

class CompanyCostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    sign_in users(:gazza)
    get company_costs_url
    assert_response :success
  end
end
