class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  CHARACTERS = [[2,"caracter_2.jpg"],[3,"caracter_3.jpg"],[4,"caracter_4.jpg"],[5,"caracter_5.jpg"]]       

  ## Association ##
	has_many :user_games
	has_many :games, through: :user_games
end
