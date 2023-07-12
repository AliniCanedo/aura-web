class AddUnknownAndNotApplicableToAnswers < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :unknown, :boolean
    add_column :answers, :not_applicable, :boolean
  end
end
