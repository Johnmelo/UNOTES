UNOTES::Application.routes.draw do

  resources :groups#, :collection => {:participate =>:get}

  devise_for :users

  resources :users

  root :to => 'home#index'


end
