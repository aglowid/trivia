class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :option_1
      t.string :option_2
      t.string :option_3
      t.string :option_4
      t.string :correct_ans

      t.timestamps
    end
  end
end
