Rails.application.routes.draw do

  get 'items/create'
  get 'items/update'
  get 'items/show'
  get 'items/index'
  get 'items/destroy'
  get 'items/edit'
  get 'items/new'
resources :items

end
