class Player
    attr_reader :name, :HP
def initialize(name)
  @name = name
  @HP = 60
end

def attack(player)
  player.reduceHP
end

def reduceHP
  @HP -= 10
end

end


