json.array! @company_costs do |cost|
  json.partial! "company_costs/company_cost", cost: cost
end
