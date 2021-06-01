Rails.application.routes.draw do

  resources :categories
  resources :articles do
    resources :comments, only: [:create, :destroy, :update, :show]
  end
  devise_for :users
  root 'welcome#index'

end
=begin
get "/articles"   index
post "/articles/" create
delete "/articles/:id" destroy
get "/article/:id show 
get "/articles/new" new 
get "/articles/:id/edit" edit 
patch "/articles/:id" update 
put "/articles:id" update
=end
=begin
  HTTP 
  Verbos:
    GET
    POST
    PATCH
    PUT
    DELETE
=end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
