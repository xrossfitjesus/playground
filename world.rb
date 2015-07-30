


require_relative 'players'

class World
  def initialize(world)
    @world = world
    @char = []
  end
  
  def add_player(player)
    @char << player
  end
  
  def state
    @char.each do |player|
    player.remove_life
       puts player
       p "Welcome to #{@world} level"
    end
  end
  
  def new_state
    @char.each {|player| player.normalize}
    puts @char
  end
end
