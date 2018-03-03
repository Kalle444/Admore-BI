class CompanyCostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @company_costs = CompanyCost.all.includes(:users)
    # raise
    # @company_cost.last.users[1]
    # @company_cost.first.users.empty?
  end
end
