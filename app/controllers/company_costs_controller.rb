# frozen_string_literal: true

class CompanyCostsController < ApplicationController
  def index
    @company_costs = Cost.all
  end
end
