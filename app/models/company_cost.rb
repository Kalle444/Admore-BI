# create_table "company_costs", force: :cascade do |t|
#   t.string "name"
#   t.integer "amount"
#   t.datetime "start_date"
#   t.datetime "end_date"
#   t.boolean "admore_cost", default: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end



class CompanyCost < ApplicationRecord
end
