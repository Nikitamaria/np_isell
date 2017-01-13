Rails.application.routes.draw do
  get 'profiles/new'
  resources :profiles

  # Add devises registrations controller to allpow after sign up pathc
  devise_for :users, controllers: { registrations: "registrations"}
  root 'home#index'	
  get 'home/index'

  # Add about page route
  get "/about", to: "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
