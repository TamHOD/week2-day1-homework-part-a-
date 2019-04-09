class Team

  attr_accessor :team_name, :drivers, :coach

  def initialize(team_name, drivers, coach)
    @team_name = team_name
    @drivers = drivers
    @coach = coach
    @points = 0
  end

  def add_driver(name)
    @drivers << name
  end

  def check_driver(search_name)
    driver_name = []
    for driver in @drivers
      if driver ==  search_name
        driver_name.push(driver)
      end
    end
    return driver_name[0]
  end

  def check_points
    return @points
  end

  def add_points_for_win(win)
    @points += 43 if win = true
  end


  # def team_name()
  #   return @team_name
  # end
  #
  # def drivers()
  #   return @drivers
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end


end
