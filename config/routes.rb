Rails.application.routes.draw do
  namespace :admin do
      resources :answers
      resources :answer_models
      resources :multiples
      resources :questions
      resources :question_ratings
      resources :students

      root to: "answers#index"
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "questions#show", id: 1

  resources :answers
  resources :questions
end
