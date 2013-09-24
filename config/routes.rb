Livingbull::Application.routes.draw do

  get "pages/index"

  resources :photos

  root :to => 'pages#index'

  match '/software' => 'pages#software'

end
