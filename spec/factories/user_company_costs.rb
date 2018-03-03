# frozen_string_literal: true
FactoryBot.define do
  factory :user_company_cost, class: UserCompanyCost do
    amount 1200
    user nil
    company_cost nil
  end
end
