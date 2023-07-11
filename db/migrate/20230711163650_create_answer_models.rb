class CreateAnswerModels < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_models do |t|
      t.string :description
      t.integer :numerical_value

      t.timestamps
    end
  end
end
