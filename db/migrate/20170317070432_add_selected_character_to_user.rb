class AddSelectedCharacterToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :selected_character, :integer
  end
end
