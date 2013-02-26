Datadb::Application.routes.draw do
  resources :facets

  resources :categories

  resources :measurements

  resources :metrics

  root :to => "home#index"
  devise_for :users
end
