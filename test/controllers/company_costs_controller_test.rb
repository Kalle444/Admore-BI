require 'test_helper'
require 'pry'

class CompanyCostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    sign_in User.create(email: "test@gmail.com", password: "123456")
    get company_costs_url
    assert_response :success
  end
end
