# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: "company_costs#index"

  resources :company_costs, only: [:index]
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
