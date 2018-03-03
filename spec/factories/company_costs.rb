# frozen_string_literal: true

FactoryBot.define do
  factory :company_cost, class: CompanyCost do
    name "MyString"
    amount 1200
    start_date "2018-02-26 19:47:40"
    end_date "2018-02-26 19:47:40"
    admore_cost false
  end
end
