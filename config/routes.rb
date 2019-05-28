Rails.application.routes.draw do
  
  root 'static#index'

  namespace :admin do
    root 'panel#index'
    devise_for :users, :module => "devise"
    resources :users, only: [:index, :show]

    resources :cupboards do
      resources :assets
    end
    
  end

end
