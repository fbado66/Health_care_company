Rails.application.routes.draw do
  resources :contracts
  resources :request_jobs
  resources :request_services
  resources :services
  resources :admins
  resources :clients
  resources :aides
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# GET THE USER THE LOGIN FORM
get "/login", to: "aides#login", as: "login"
# HANDLE THE LOGIN FORM SUBMISSION
post "/send_the_form_here", to: "aides#handle_login"
delete "/logout", to: "aides#logout", as: "logout"



end
