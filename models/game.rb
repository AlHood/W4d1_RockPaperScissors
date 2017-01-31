class Game


  def initialize(play1, play2)
    @player1 = Player.new(play1.to_s)
    @player2 = Player.new(play2.to_s)
  end

  def play
    p1s = @player1.score_check
    p2s = @player2.score_check

    if (p1s == 0 && p2s == 2)
      return "player 1 wins with #{@player1.play}"
    elsif (p2s == 0 && p1s == 2)
      return "player 2 wins with #{@player2.play}"
    elsif p1s > p2s
      return "player 1 wins with #{@player1.play}"
    elsif p2s > p1s 
      return "player 2 wins with #{@player2.play}"
    else
      return "It is a draw"

    end

  end


end