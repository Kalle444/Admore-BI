# frozen_string_literal: true

class CompanyCostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @company_costs = CompanyCost.all.includes(:users)
  end
end
