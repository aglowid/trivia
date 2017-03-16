class CreateUserGameQuesAndAns < ActiveRecord::Migration[5.0]
  def change
    create_table :user_game_ques_and_ans do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :question_id
      t.string :answer
      t.boolean :is_correct_ans

      t.timestamps
    end
  end
end
