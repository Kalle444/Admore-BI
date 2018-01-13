class CostsController < ApplicationController

  def index
    @company_costs  = Cost.all
  end
end
