Rails.application.routes.draw do
  root to: "appointments#index"
  resources :appointments, except: :destroy
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  get    '/calendar', to: 'appointments#calendar'
  resources :users
end
