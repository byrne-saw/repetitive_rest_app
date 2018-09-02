Rails.application.routes.draw do
  namespace :api do
    get "/houses" => "houses#index"
    post "/houses" => "houses#create"
    get "/houses/:id" => "houses#show"
    patch "/houses/:id" => "houses#update"
    delete "houses/:id" => "houses#destroy"
  end

end
