Datadb::Application.routes.draw do

  match '/search', to: 'home#search', via: :all

  resources :facets

  resources :categories

  resources :measurements

  resources :metrics


  root :to => "home#index"
  devise_for :users
end
