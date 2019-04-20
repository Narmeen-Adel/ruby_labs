Rails.application.routes.draw do
  # get 'sessions/login,' controller: 'sessions_controller'
  # get 'sessions/home,'
  # get 'sessions/profile,'
  # get 'sessions/setting'
  # get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :articles
  get 'sessions/login', to: 'sessions#login'
  resources :articles do
    resources :comments
  end
  resources :users, only: [:new, :create]
 
  root 'welcome#index'
end
