Rails.application.routes.draw do
  
  get 'pages/index'
  get 'quiz', to: 'pages#sorting_quiz', as: :sorting_quiz
  root "pages#index"
  
end
