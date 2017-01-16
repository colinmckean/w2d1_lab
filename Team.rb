class Team
  def initialize
    @team_name = "Colin's 3 man team"
    @players = ["Player A", "Player B", "Player C"]
    @coach = "Colin"
  end

  def get_team_name
    return @team_name
  end
  
  def get_players
    return @players
  end

  def get_coach
    return @coach
  end

  def set_coach(new_coach)
    @coach = new_coach
  end
end

