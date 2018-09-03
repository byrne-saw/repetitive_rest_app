Rails.application.routes.draw do
  namespace :api do
    get "/mainzers" => 'mainzers#index'
    post "/mainzers" => 'mainzers#create'
    get "mainzers/:id" => 'mainzers#show'
    patch "mainzers/:id" => 'mainzers#update'
    delete "mainzers/:id" => 'mainzers#destroy'
  end
end
