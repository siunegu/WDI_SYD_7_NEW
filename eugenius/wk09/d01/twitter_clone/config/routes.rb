Rails.application.routes.draw do
  get 'pages/home'

  resources :statuses
  root to: "pages#home"
end
