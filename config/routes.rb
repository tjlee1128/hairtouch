Rails.application.routes.draw do
  resources :shops
  resources :designers

  root :to => 'shops#index'
  match ":controller(/:action(/:id))" , :via => [:get,:post]
end
