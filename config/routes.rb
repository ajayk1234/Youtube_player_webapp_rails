Rails.application.routes.draw do
  
  get 'sessions/create'

  get 'sessions/destroy'

  get 'playvideo' => 'videos#playvideo'
  
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  get 'videos' => 'videos#index'

  resources :sessions
  resource :home
  resources :videos

  root to: "videos#login"

  # root to: 'videos#index'	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
