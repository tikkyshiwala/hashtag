Hashtag::Application.routes.draw do
  root to: 'searches#new'
  resources :searches, only: [:create, :show]
  resources :sessions, only: [:create, :new, :destroy]
end
