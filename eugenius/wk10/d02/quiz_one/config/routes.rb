Rails.application.routes.draw do

  root "home#index"
  get 'javascript', to: 'home#javascript', as: :javascript

end
