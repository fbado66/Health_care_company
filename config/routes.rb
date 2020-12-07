Rails.application.routes.draw do

  root to: 'users#homepage'

  resources :contracts
  resources :request_jobs
  resources :request_services
  resources :services
  resources :admins
  resources :clients
  resources :aides
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #HomePage 
  get '/home', to: 'users#homepage'
  # AboutPage 
  get '/about', to: "users#about"


# SERVICES 
get "/careers/:id", to: "services#career", as: 'career_path'


# GET THE AIDE THE LOGIN FORM
get "/login", to: "aides#login", as: "login"
# HANDLE THE LOGIN FORM SUBMISSION
post "/send_the_form_here", to: "aides#handle_login"
delete "/logout", to: "aides#logout", as: "logout"
get "/profile", to: "aides#profile", as: "profile"


# GET THE CLIENT THE LOGIN FORM
get "/login_2", to: "clients#login", as: "login_2"
# HANDLE THE LOGIN FORM SUBMISSION
post "/send_the_form_here_2", to: "clients#handle_login"
delete "/logout_2", to: "clients#logout", as: "logout_2"
get "/my_profile", to: "clients#my_profile", as: "my_profile"


# GET THE ADMIN THE LOGIN FORM
get "/login_3", to: "admins#login", as: "login_3"
# HANDLE THE LOGIN FORM SUBMISSION
post "/send_the_form_here_3", to: "admins#handle_login"
delete "/logout_3", to: "admins#logout", as: "logout_3"
get "/admin_profile", to: "admins#profile", as: "admin_profile"

# EXTRA RENDER FOR SERVICES CONTROLLER 
get "jobs", to: 'services#job', as: 'jobs'

end
