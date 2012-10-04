Digitaldoc::Application.routes.draw do

  resources :podcasts
  resources :speakers
  root :to => 'pages#index'

end
