Rails.application.routes.draw do
  root 'posts#index'
  get "/login", :controller => "sessions", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"

  resources :posts do
    resources :comments, only: :create
    resources :likes, only: [:create] # add this line
  end

  resources "sessions"
  resources "users"
end
