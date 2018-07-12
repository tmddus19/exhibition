Rails.application.routes.draw do
 
  get 'admin/users'
    get 'admin/users/:id/change' => 'admin#change'

  devise_for :users
  root 'works#index'

  resources :works
 
  resources :makers

end
