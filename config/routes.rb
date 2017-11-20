Rails.application.routes.draw do
  resources :secret_code
  devise_for :users, :controllers => {:registration => "registration"}
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
