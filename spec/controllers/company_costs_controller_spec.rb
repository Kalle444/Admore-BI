# frozen_string_literal: true

require "rails_helper"

RSpec.describe CompanyCostsController, type: :controller do

  describe "GET #index" do
    let(:user) { create(:user) }
    let(:company_cost) { create(:company_cost) }
    let(:user_company_cost) { create(:user_company_cost, user: user, company_cost: company_cost) }

    it "returns http success" do
      sign_in user

      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns an array of company_cost" do
      get :index
      expect(assigns(:company_costs)).to eq([company_cost])
    end
  end

end
