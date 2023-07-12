# spec/factories/questions.rb

FactoryBot.define do
    factory :question do
        description { 'Sample question' }
        association :question_rating
        association :answer_model
    end
end
  