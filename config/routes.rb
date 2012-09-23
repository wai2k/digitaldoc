Digitaldoc::Application.routes.draw do

  resources :speakers

  root :to => 'pages#index'

end
