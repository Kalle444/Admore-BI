# frozen_string_literal: true
FactoryBot.define do
  factory :user, class: User do
    first_name "Lena"
    last_name "Lovgren"
    email "Lena@gmail.com"
    password "123456"
  end
end
