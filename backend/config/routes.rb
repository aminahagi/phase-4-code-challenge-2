Rails.application.routes.draw do
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  resources :heropowers, only: [:create]

  get '/heroes/:id', to: 'heroes#show'
  get '/powers/:id', to: 'powers#show'
end
