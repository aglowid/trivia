class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.float :duration

      t.timestamps
    end
  end
end
