json.array! @company_costs do |cost|
  json.partial! "costs/company_cost", cost: cost
end
