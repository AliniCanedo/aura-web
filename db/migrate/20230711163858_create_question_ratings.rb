class CreateQuestionRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :question_ratings do |t|
      t.string :description

      t.timestamps
    end
  end
end
