Rails.application.routes.draw do
  root 'pages#index'

  resources :locations do
    get :images, on: :member
  end

  resources :attachments, only: [:destroy, :update]

  resources :site_configs, only: [:edit, :update]
end
