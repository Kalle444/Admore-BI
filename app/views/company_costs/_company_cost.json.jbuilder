# frozen_string_literal: true

json.extract! company_cost, :name, :id, :amount

json.start_date = "#{company_cost[:start_date].strftime("%b %Y")}"
json.end_date = "#{company_cost[:end_date].strftime("%b %Y")}"

if company_cost.users.empty?
  json.company_cost_place "Admore"
else
  json.company_cost_place users_as_string(company_cost.users)
end


def users_as_string(users)
  users_array = []
  users.each do |user|
    users_array << user.abbreviated_name
  end
  users_array.join(", ")
end

=begin
JSON returns the following if it there are users assigned to the cost:
[{"name": "Hyra", "id":"14", "amount": "120000", "start_date": "Jan 2018",
"end_date": "Dec 2018", "company_cost_place": "L Lovgren, B Karlsson" }]

JSON returns the following if assigned as company cost = Admore cost:
[{"name": "Hyra", "id":"14", "amount": "120000", "start_date": "Jan 2018",
"end_date": "Dec 2018", "company_cost_place": "Admore"}]
=end
