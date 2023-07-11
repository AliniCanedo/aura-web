class Question < ApplicationRecord
  belongs_to :question_rating
  belongs_to :answer_model
end
