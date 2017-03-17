class AddGameCodeToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :game_code, :string
  end
end
