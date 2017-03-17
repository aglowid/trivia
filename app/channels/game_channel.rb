class GameChannel < ApplicationCable::Channel  
  def subscribed
    stream_from 'games'
  end
end