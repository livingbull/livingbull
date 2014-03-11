Livingbull::Application.routes.draw do

  devise_for :users
  resources :users

  root :to => 'pages#index'
  match 'pages/index', via: :get

  resources :photos
  match '/gallery' => 'photos#gallery', via: :get
  match '/national_parks' => 'photos#national_parks', via: :get

  match '/software' => 'pages#software', via: :get

end
