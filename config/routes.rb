Rails.application.routes.draw do
  devise_for :users
  resources :video_requests do
    member do
      resources :comments
    end
  end

  resources :channels
  namespace :static_pages do
    get :about
  end
  root 'static_pages#index'
end
