class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    p1_strategy = player1[1]
    p2_strategy = player2[1]
    
    unless ["R","P","S"].include? p1_strategy and ["R","P","S"].include? p2_strategy
      raise RockPaperScissors::NoSuchStrategyError.new("Strategy must be one of R,P,S")
    end
    
    case p1_strategy
      when "R"
        case p2_strategy
          when "R"
            player1
          when "P"
            player2
          when "S"
            player1
        end
      when "P"
        case p2_strategy
          when "R"
            player1
          when "P"
            player1
          when "S"
            player2
        end
      when "S"
        case p2_strategy
          when "R"
            player2
          when "P"
            player1
          when "S"
            player1
        end
    end
  end

  def self.tournament_winner(tournament)
    if ["R","P","S"].include? tournament[0][1]
      tourn_winner = winner(tournament[0], tournament[1])
    else
      player1 = tournament_winner(tournament[0])
      player2 = tournament_winner(tournament[1])
      tourn_winner = winner(player1, player2)
    end
    tourn_winner
  end
end
