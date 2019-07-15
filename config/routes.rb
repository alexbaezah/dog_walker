Rails.application.routes.draw do
  get 'maps2/index'
  get 'maps/index'
  get 'geocoder/finaddress'
  Rails.application.routes.draw do
  get 'maps2/index'
  get 'maps/index'
  get 'geocoder/finaddress'
    devise_for :users, controllers: {
      registrations: 'users/registrations'
     }
  devise_for :dog_walkings, controllers: {
    registrations: 'dog_walkings/registrations'
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
  end  
end
