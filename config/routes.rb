Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'state_or_territories#index'
  resources :state_or_territories, only: [:index, :show]
end
