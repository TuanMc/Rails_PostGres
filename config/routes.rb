Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => "register"
  }
  get 'static_pages/about'
  get 'static_pages/home'
  get 'static_pages/help'
  resources :microposts
  resources :users
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
end
