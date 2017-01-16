require 'minitest/autorun'
require 'minitest/rg'
require_relative '../Team.rb'

class TestTeam < MiniTest::Test
  def setup
    @ateam = Team.new
  end

  def test_get_team_name
    assert_equal("Colin's 3 man team", @ateam.get_team_name())
  end

  def test_get_players
    assert_equal(["Player A", "Player B", "Player C"],@ateam.get_players())
  end
  def test_get_coach
    assert_equal("Colin", @ateam.get_coach)
  end

  def test_set_coach
    assert_equal("Colin's Evil Twin", @ateam.set_coach("Colin's Evil Twin"))
    
  end

#Make a class to represent a Team that has the properties Team name (String), Players (Array of strings) and a Coach (String).

end