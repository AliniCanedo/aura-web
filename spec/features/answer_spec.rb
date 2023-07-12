require 'rails_helper'

RSpec.feature 'Answer', type: :feature do
  scenario 'User can submit an answer' do
    question = FactoryBot.create(:question)

    visit "/"

    expect(page).to have_content(question.question_rating.description)
    expect(page).to have_content(question.description)
  end
end

