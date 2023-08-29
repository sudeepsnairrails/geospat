Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tickets#index'
  resources :tickets, only: [:index, :show]
  
  namespace :api do
    namespace :v1 do
      match 'load', to: 'load#index', via: [:post]
    end
  end
end
