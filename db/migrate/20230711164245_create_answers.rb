class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.references :question, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.string :student_answer

      t.timestamps
    end
  end
end
