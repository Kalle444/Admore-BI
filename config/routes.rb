Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :company_costs, only: [:index, :new, :create, :edit, :update]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
