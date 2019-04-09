require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_team_name
    team = Team.new('Mercedes', ['Hamilton', 'Bottas'], 'Toto')
    assert_equal('Mercedes',team.team_name)
  end

  def test_drivers
    team = Team.new('Mercedes', ['Hamilton', 'Bottas'], 'Toto')
    assert_equal(['Hamilton', 'Bottas'], team.drivers)
  end

  def test_coach
    team = Team.new('Mercedes', ['Hamilton', 'Bottas'], 'Toto')
    assert_equal('Toto', team.coach)
  end

  def test_set_coach
    team = Team.new('Mercedes', ['Hamilton', 'Bottas'], 'Toto')
    #team.set_coach('Alex')
    team.coach = "Alex"
    assert_equal('Alex', team.coach)
  end

  def test_add_driver
    team = Team.new('Mercedes', ['Hamilton', 'Bottas'], 'Toto')
    team.add_driver('Ocon')
    assert_equal(['Hamilton', 'Bottas', 'Ocon'], team.drivers)
  end

  def test_check_driver
    team = Team.new('Mercedes', ['Hamilton', 'Bottas'], 'Toto')
    assert_equal('Hamilton', team.check_driver("Hamilton"))
  end

  def test_check_points
    team = Team.new('Mercedes', ['Hamilton', 'Bottas'], 'Toto')
    assert_equal(0, team.check_points)
  end

  def test_check_add_points_for_win
    team = Team.new('Mercedes', ['Hamilton', 'Bottas'], 'Toto')
    team.add_points_for_win(true)
    assert_equal(43, team.check_points)
  end



end
