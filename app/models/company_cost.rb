# frozen_string_literal: true
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
  # Associations
  has_many :user_company_costs

  # Validations
  validates :name, presence: true
  validates :amount, presence: true
  validates :admore_cost, inclusion: { in: [true, false], allow_nil: false }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
