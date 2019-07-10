Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }
  #  resources :dogs
  get '/dogs', to: 'dogs#index'
  get '/dogs/new', to: 'dogs#new'
  post '/dogs', to: 'dogs#create'
  get 'dogs/:id/edit', to: 'dogs#edit', as: 'dog_edit'
  get 'dogs/:id', to: 'dogs#show', as: 'dog'
  patch 'dogs/:id', to: 'dogs#update'
  delete 'dogs/:id', to: 'dogs#delete'

  root to: "dogs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
