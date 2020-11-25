Rails.application.routes.draw do
  root 'top#index'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  resources :tests, only: :index do
    collection do
      resources :level do
        member do
          get :question
        end
      end
    end
  end

  resources :rank, only: :index do
    collection do
      resources :level do
        member do
          get :ranking
        end
      end
    end
  end
end
