Rails.application.routes.draw do

  devise_for :users
  resources :polls do
    resources :questions
    resources :replies, only: [ :new, :create ]
  end
  
  root "polls#index"
  
end
