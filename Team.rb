class Team
  attr_accessor :coach
  attr_reader :team_name, :players
  # Add a points property into your class that starts at 0.


  def initialize
    @team_name = "Colin's 3 man team"
    @players = ["Player A", "Player B", "Player C"]
    @coach = "Colin"
    @points = 0
  end

  # def team_name
  #   return @team_name
  # end

  # def get_players
  #   return @players
  # end

  # def get_coach
  #   return @coach
  # end

  # def set_coach(new_coach)
  #   @coach = new_coach
  # end


  def add_player(player)
    return @players.push(player)
  end

  def player_in_team?(player_name)
    for player in @players
      if player == player_name
        return true
      else
        return false
      end
    end
  end

  def get_points
    return @points
  end
  def game_result(win_loss)
    if win_loss == "win"
      return @points+=1
    end
  return @points
  end
end

