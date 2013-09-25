Livingbull::Application.routes.draw do

  get "pages/index"

  resources :photos

  root :to => 'pages#index'

  get '/software' => 'pages#software'

end
