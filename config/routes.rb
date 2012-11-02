Digitaldoc::Application.routes.draw do

  resources :podcasts
  resources :speakers
  get "schedule" => 'pages#schedule', as: "schedule"
  root :to => 'pages#index'

end
