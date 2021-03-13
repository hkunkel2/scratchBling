Rails.application.routes.draw do

  devise_for :users
  get 'items/create'
  get 'items/update'
  get 'items/show'
  get 'items/index'
  get 'items/destroy'
  get 'items/edit'
  get 'items/new'
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      resources :items
    end
  end

end
