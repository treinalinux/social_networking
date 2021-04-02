Rails.application.routes.draw do
  devise_for :users
  # devise_for :admins, skip: [:registrations]
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  namespace :admin do
    root to: "home#index"
    resources :admins
    resources :users, only: :index
  end

end
