Rails.application.routes.draw do
  resources :mains
  # get "welcome/index"
  root to: "mains#index"
end
