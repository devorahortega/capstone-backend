Rails.application.routes.draw do
  get "/prompts" => "prompts#index"
  get "/prompts/:id" => "prompts#show"
  post "/prompts" => "prompts#create"
  patch "/prompts/:id" => "prompts#update"
  delete "/prompts/:id" => "prompts#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/favorites" => "favorites#index"
  get "/favorites/:id" => "favorites#show"
  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"
end
