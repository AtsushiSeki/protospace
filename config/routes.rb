Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resource :prototypes
  resource :users
end

