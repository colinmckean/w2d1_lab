class Team
  attr_accessor :coach
  attr_reader :team_name, :players, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(player)
    return @players.push(player)
  end

  def player_in_team?(player_name)
    @players.include?(player_name)
  end

  def game_result(win_loss)
    win_loss == "win" ? @points += 1 : points
  end
end

