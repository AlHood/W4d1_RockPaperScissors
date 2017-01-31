
class Player

attr_accessor :play, :score 


def initialize(play)
@play = play.to_s.downcase 
@score = 0
end

def score_check
if @play == "rock"
  @score = 0
elsif @play == "paper"
  @score = 1
else
  @score = 2
end 

return @score
end




end