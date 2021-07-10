class CreateQuestionAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :question_answers do |t|
      t.string :question_str, null: false
      t.string :solved_str
      t.timestamps
    end
  end
end
