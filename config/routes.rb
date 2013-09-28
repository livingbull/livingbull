Livingbull::Application.routes.draw do

  devise_for :users
  resources :users

  get "pages/index"

  resources :photos

  root :to => 'pages#index'

  get '/software' => 'pages#software'
  get '/gallery' => 'photos#gallery'

end
