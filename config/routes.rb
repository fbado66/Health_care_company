Rails.application.routes.draw do
  resources :users
  resources :contracts
  resources :request_jobs
  resources :request_services
  resources :services
  resources :admins
  resources :clients
  resources :aides
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# GET THE USER THE LOGIN FORM
get "/login", to: "users#login", as: "login"
# HANDLE THE LOGIN FORM SUBMISSION
post "/send_the_form_here", to: "users#handle_login"
delete "/logout", to: "users#logout", as: "logout"



end
