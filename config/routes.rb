Rails.application.routes.draw do
  root :to => 'questions#index'

  resources :users
  resources :questions do
    resources :answers
  end

  resources :sessions, :only => [:new, :create, :destroy]

end
