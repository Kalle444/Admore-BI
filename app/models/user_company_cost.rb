# frozen_string_literal: true

# create_table "user_company_costs", force: :cascade do |t|
#   t.integer "amount"
#   t.bigint "user_id"
#   t.bigint "company_cost_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["company_cost_id"], name: "index_user_company_costs_on_company_cost_id"
#   t.index ["user_id"], name: "index_user_company_costs_on_user_id"
# end

class UserCompanyCost < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :company_cost

  # Validations
  validates :amount, presence: true
end
