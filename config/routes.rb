Rails.application.routes.draw do
  
  resources :profiles
  devise_for :users
  root :to => 'home#index'
  get 'home/index'
  get 'creatives/index'
  get 'freelancers/index'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
root "home#index"
  resources :cycles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
