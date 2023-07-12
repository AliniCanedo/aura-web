Rails.application.routes.draw do
  devise_for :students

  resources :answers
  resources :questions

  authenticate :student do
    resources :questions
  end

  namespace :admin do
    resources :answers
    resources :answer_models
    resources :multiples
    resources :questions
    resources :question_ratings
    resources :students

    root to: "answers#index"
  end

  root "questions#show", id: 1
end
