require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

def test_to_hash_return
  @team = Team.new("Michelle", 10, "Josh, Bella")

  assert_equal(
    {:team_name => "Michelle",
    :level => 10,
    :points => 0}, @team.to_hash
  )
end

end
