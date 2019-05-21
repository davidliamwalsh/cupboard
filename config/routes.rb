Rails.application.routes.draw do
  
  root 'static#index'
  
  namespace :admin do
    root 'panel#index'
    resources :cupboard
  end

end
