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

# GET THE AIDE THE LOGIN FORM
get "/login", to: "aides#login", as: "login"
# HANDLE THE LOGIN FORM SUBMISSION
post "/send_the_form_here", to: "aides#handle_login"
delete "/logout", to: "aides#logout", as: "logout"

# GET THE AIDE THE LOGIN FORM
get "/login_2", to: "clients#login", as: "login_2"
# HANDLE THE LOGIN FORM SUBMISSION
post "/send_the_form_here_2", to: "clients#handle_login"
delete "/logout_2", to: "clients#logout", as: "logout_2"

end
