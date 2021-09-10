Rails.application.routes.draw do
  resources :custodians
  resources :tenants
  resources :landlords
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
