Rails.application.routes.draw do
  get 'pages/home'

  resources :schools
  root to: "pages#home"
end
