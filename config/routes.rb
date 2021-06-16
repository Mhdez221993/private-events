Rails.application.routes.draw do
  root 'events#index'
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :events
  resources :attended_events
  get '/users/:id', to: 'users#show', as: 'user_events'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
