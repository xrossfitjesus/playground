





require_relative 'players'

system 'clear'

p1 = Player.new('mario',75,100)
p2 = Player.new('luigi',55,100)
p3 = Player.new('peach',100)
p4 = Player.new('bowser',100)

char = [p1,p2,p3,p4]

world1 = World.new('sunny')
world1.add_player(p1)
world1.state
world1.new_state

