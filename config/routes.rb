Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "grams#index"
  resources :grams do
    resources :comments, only: :create
  end

end
