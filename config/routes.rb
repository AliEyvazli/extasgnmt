Rails.application.routes.draw do
  get "/", :controller => "posts", :action => "index"
  get "/login", :controller => "sessions", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"

  resources :posts do
    resources :comments, only: :create
  end

  resources "sessions"
  resources "users"
end
