Rails.application.routes.draw do
  get "/prompts" => "prompts#index"
  get "/prompts/:id" => "prompts#show"
  post "/prompts" => "prompts#create"
  patch "/prompts/:id" => "prompts#update"
  delete "/prompts/:id" => "prompts#destroy"
end
