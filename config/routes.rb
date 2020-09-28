Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  get 'pages/contact'
  get 'teacher' => 'clock_events#teacher'
  resources :clock_events
  root 'clock_events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
