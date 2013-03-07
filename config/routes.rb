SampleProj1::Application.routes.draw do
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "user#new", :as => "sign_up"
  root :to => "movies#index"
  resources :users , :controller => 'user'
  resources :sessions
  resources :movies
end
