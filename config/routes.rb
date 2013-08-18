Community::Application.routes.draw do
  get "posts/(*backbone)" => "posts#index"
  resources :posts, only: :index

  root to: 'posts#index'
end
