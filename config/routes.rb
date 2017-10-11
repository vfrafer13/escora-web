Rails.application.routes.draw do

  resources :restorations
  resources :works
  resources :collections
  resources :warehouses
  resources :static_pages

  root "static_pages#index"
  devise_for :users, :controllers => {
      registrations: 'registrations'
  }

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
    get 'index' => 'static_pages#index'
  end

  devise_scope :user do
    get 'sign_up', to: 'devise/registrations#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
