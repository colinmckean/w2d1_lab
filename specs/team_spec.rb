require 'minitest/autorun'
require 'minitest/rg'
require_relative '../Team.rb'

class TestTeam < MiniTest::Test
  def setup
    @ateam = Team.new("Colin's 3 man team", ["Player A", "Player B", "Player C"], "Colin" )
  end

  def test_get_team_name
    assert_equal("Colin's 3 man team", @ateam.team_name())
  end

  def test_get_players
    assert_equal(["Player A", "Player B", "Player C"],@ateam.players())
  end
  def test_get_coach
    assert_equal("Colin", @ateam.coach)
  end

  def test_set_coach
    assert_equal("Colin's Evil Twin", @ateam.coach=("Colin's Evil Twin"))
  end

  def test_can_add_player_to_players_array
    assert_equal(["Player A", "Player B", "Player C", "Player D"], @ateam.add_player("Player D"))
  end
  def test_if_player_is_in_team
    assert_equal(false, @ateam.player_in_team?("Player 8"))
    assert_equal(true, @ateam.player_in_team?("Player A"))
    
  end

  def test_points_starts_at_zero
    assert_equal(0, @ateam.points)
  end
  def test_updates_points_for_win
    assert_equal(1, @ateam.game_result("win"))
    assert_equal(2, @ateam.game_result("win"))
    assert_equal(2, @ateam.game_result("loss"))
    assert_equal(2, @ateam.points)
  end
end