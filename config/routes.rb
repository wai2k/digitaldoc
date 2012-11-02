Digitaldoc::Application.routes.draw do

  resources :events

  resources :speakers

  get "schedule" => 'pages#schedule', as: "schedule"
  root :to => 'pages#index'

end
