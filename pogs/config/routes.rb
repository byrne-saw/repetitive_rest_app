Rails.application.routes.draw do
  namespace :api do
    get "/pogs" => 'pogs#index'
    post "/pogs" => 'pogs#create'
    get "/pogs/:id" => 'pogs#show'
    patch "/pogs/:id" => 'pogs#update'
    delete "/pogs/:id" => 'pogs#destroy'
  end
end
