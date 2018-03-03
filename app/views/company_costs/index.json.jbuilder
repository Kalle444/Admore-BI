# frozen_string_literal: true

json.array! @company_costs do |company_cost|
  json.partial! "company_costs/company_cost", company_cost: company_cost
end
