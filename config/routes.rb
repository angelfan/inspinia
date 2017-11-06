Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :angel_passes

  root to: 'angel_passes#index'
end
