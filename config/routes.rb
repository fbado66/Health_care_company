Rails.application.routes.draw do
  resources :contracts
  resources :request_jobs
  resources :request_services
  resources :services
  resources :admins
  resources :clients
  resources :aides
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
