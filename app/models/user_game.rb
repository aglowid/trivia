class UserGame < ApplicationRecord
	## Association ##
	belongs_to :user
	belongs_to :game

	## Callback##
	after_create_commit :game_user_added #{MessageBroadCastJob.perform_later self}

 	def game_user_added
 	  ActionCable.server.broadcast 'games',
        game: self.game,
        user: self.user
    end
end
