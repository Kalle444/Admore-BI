# Cost table schema
# create_table "costs", force: :cascade do |t|
#   t.string "name"
#   t.integer "amount"
#   t.boolean "company_cost"
#   t.date "start_date"
#   t.date "end_date"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.integer "number_of_assignees"
# end

class Cost < ApplicationRecord
#Associations



#Validations
validates :name, presence: true
validates :amount, presence: true
validates :company_cost, inclusion: { in: [true, false], allow_nil: false }
validates :start_date, presence: true
validates :end_date, presence: true

end
