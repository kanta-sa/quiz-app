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
          resources :ranks, only: [:create, :update]
        end
      end
    end
  end

  resources :rankings, only: :index do
    collection do
      resources :level do
        member do
          get :ranking
        end
      end
    end
  end

  resources :words, only: :index do
    collection do
      resources :level do
        member do
          get :word
        end
      end
    end
  end

  namespace :en do
    get 'top', to: 'top#index'

    resources :tests, only: :index do
      collection do
        resources :level do
          member do
            get :question
            resources :ranks, only: [:create, :update]
          end
        end
      end
    end

    resources :rankings, only: :index do
      collection do
        resources :level do
          member do
            get :ranking
          end
        end
      end
    end

    resources :words, only: :index do
      collection do
        resources :level do
          member do
            get :word
          end
        end
      end
    end
  end
end
