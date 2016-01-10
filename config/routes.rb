Rails.application.routes.draw do
  resources :shops

  root :to => 'shops#index'
  match ":controller(/:action(/:id))" , :via => [:get,:post]
end
