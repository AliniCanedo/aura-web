class CreateMultiples < ActiveRecord::Migration[7.0]
  def change
    create_table :multiples do |t|
      t.string :description
      t.references :answer_model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
