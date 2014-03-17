Livingbull::Application.routes.draw do

  devise_for :users
  resources :users

  root :to => 'pages#index'
  match 'pages/index', via: :get
  match '/software' => 'pages#software', via: :get

  resources :photos
  match '/photo_gallery' => 'photos#photo_gallery', via: :get

  resources :adventures

end
