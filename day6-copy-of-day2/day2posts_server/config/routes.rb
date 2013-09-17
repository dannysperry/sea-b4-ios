Day2postsServer::Application.routes.draw do

  resources :posts

  root 'posts#index'

end
