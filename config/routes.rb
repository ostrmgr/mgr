Rails.application.routes.draw do

  get 'mailbox/inbox' => 'mailbox#inbox', as: :mailbox_inbox
  get 'mailbox/sent' => 'mailbox#sent', as: :mailbox_sent
  get 'mailbox/trash' => 'mailbox#trash', as: :mailbox_trash

  devise_for :users
  resources :polls do
    resources :questions
    resources :replies, only: [ :new, :create ]
  end
  
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
  
  root "polls#index"
  
end
