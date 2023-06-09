Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/sleep_reports', to: 'sleeps#sleep_reports', as: :sleep_reports
  resources :sleeps, only: [:index, :show, :create, :update, :destroy]

  resources :users, only: [:index] do
    scope module: :users do
      resources :follows, only: [:index, :create, :destroy]
    end
  end
end
