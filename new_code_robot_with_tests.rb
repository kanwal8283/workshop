require "test/unit"
require_relative '../application/robot'

class MyFirstTest < Test::Unit::TestCase


  def test_1
    assert_equal 1, 1, "Nay"
    r = Robot.new
  end

  def test_rb_cmd_1
    r = Robot.new
    r.command('PLACE 0,0,N')
  end

  def test_rb_cmd_2
    r = Robot.new
    r.command('MOVE')
  end

  def test_rb_cmd_3
    r = Robot.new
    r.command('LEFT')
  end

  def test_rb_cmd_4
    r = Robot.new
    r.command('RIGHT')
  end

  def test_rb_cmd_5
    r = Robot.new
    r.command('REPORT')
  end

  def test_first_command_must_be_place
    r = Robot.new
    result = r.command('REPORT')
    assert_equal "Error, first command must be PLACE", result, ":( :( :("
  end

  def test_first_command_must_be_place_2
    r = Robot.new

    r.command('PLACE 0,0,N')
    result = r.command('REPORT')
    assert_equal "0,0,N", result, ":( :( :("
  end

  def test_first_command_must_be_place_3
    r = Robot.new

    r.command('PLACE 1,1,N')
    result = r.command('REPORT')
    assert_equal "1,1,N", result, ":( :( :("
  end

  def test_first_command_must_be_place_4
    r = Robot.new

    r.command('PLACE 2,2,N')
    result = r.command('REPORT')
    assert_equal "2,2,N", result, ":( :( :("
  end

  def test_first_command_must_be_place_5
    r = Robot.new

    r.command('PLACE 3,3,N')
    result = r.command('REPORT')
    assert_equal "3,3,N", result, ":( :( :("
  end

  def test_first_command_must_be_place_6
    r = Robot.new

    r.command('PLACE 4,4,N')
    result = r.command('REPORT')
    assert_equal "4,4,N", result, ":( :( :("
  end

  def test_first_command_must_be_place_7
    r = Robot.new

    r.command('PLACE 4,4,S')
    result = r.command('REPORT')
    assert_equal "4,4,S", result, ":( :( :("
  end

  def test_first_command_must_be_place_8
    r = Robot.new

    r.command('PLACE 4,4,E')
    result = r.command('REPORT')
    assert_equal "4,4,E", result, ":( :( :("
  end

  def test_first_command_must_be_place_9
    r = Robot.new

    r.command('PLACE 4,3,S')
    result = r.command('REPORT')
    assert_equal "4,3,S", result, ":( :( :("
  end

  def test_first_command_must_be_place_10
    r = Robot.new

    r.command('PLACE 0,0,W')
    result = r.command('REPORT')
    assert_equal "0,0,W", result, ":( :( :("
  end

  def test_bad_placement
    r = Robot.new

    result = r.command('PLACE -1,0,W')
    assert_equal "Error, PLACE must be on grid", result, ":( :( :("
  end

  def test_bad_placement_2
    r = Robot.new

    result = r.command('PLACE 0,-1,W')
    assert_equal "Error, PLACE must be on grid", result, ":( :( :("
  end

  def test_bad_placement_3
    r = Robot.new

    result = r.command('PLACE 0,-2,W')
    assert_equal "Error, PLACE must be on grid", result, ":( :( :("
  end

  def test_bad_placement_4
    r = Robot.new

    result = r.command('PLACE -3,-3,W')
    assert_equal "Error, PLACE must be on grid", result, ":( :( :("
  end

  def test_bad_placement_5
    r = Robot.new

    result = r.command('PLACE -66,-77,W')
    assert_equal "Error, PLACE must be on grid", result, ":( :( :("
  end


  def test_bad_placement_6
    r = Robot.new

    result = r.command('PLACE 66,77,W')
    assert_equal "Error, PLACE must be on grid", result, ":( :( :("
  end

  def test_bad_placement_7
    r = Robot.new

    result = r.command('PLACE 6,7,W')
    assert_equal "Error, PLACE must be on grid", result, ":( :( :("
  end

  def test_bad_placement_8
    r = Robot.new

    result = r.command('PLACE 7,6,W')
    assert_equal "Error, PLACE must be on grid", result, ":( :( :("
  end

  def test_good_placement_1

    r = Robot.new

    result1 =  r.command('PLACE 6,3,W')
    assert_equal "PLACE Succeeded", result1, ":( :( :("
    result = r.command('REPORT')
    assert_equal "6,3,W", result, ":( :( :("

  end

  def test_good_placement_2
        r = Robot.new

    r.command('PLACE 1,3,N')
    result = r.command('REPORT')
    assert_equal "1,3,N", result, ":( :( :("

  end

  def command_move
    r = Robot.new

    r.command('PLACE 2,2,N')
    result = r.command('REPORT')
    assert_equal "2,2,N", result, ":( :( :("
  end
  def test_second_command
    r = Robot.new

    r.command('PLACE 0,0,N')
    result = r.command('REPORT')
    assert_equal "0,0,N", result, ":( :( :("

    r.command('LEFT')
    result1 = r.command('REPORT')
    assert_equal "0,0,W", result1, ":( :( :("

  end
end
# This is the code
class Robot

  def initialize
    @placed_on_grid = false
    @x = nil
    @y = nil
    @first_command_place = false
    @direction = Array["NORTH", "EAST", "SOUTH", "WEST"]
  end

  def command(arg)
    if (what_cmd(arg) == 'PLACE')
      @placed_on_grid = true
      set_x_and_y arg
      error
    elsif  arg == "REPORT" && @placed_on_grid == true
      "#{@x},#{@y},#{@direction}"
    else
      "Error, first command must be PLACE"
    end
  end

  def command_a(arg)

    if (what_cmd(arg) == 'LEFT')
      @placed_on_grid = true
      @first_command_place = true
      left
      error
    elsif  arg == "REPORT" && @placed_on_grid == true
      "#{@x},#{@y},#{@direction}"
    else
      "Error, first command must be PLACE"
    end

  end


  def error
    if @x.to_i <= 6 && @y.to_i <= 6 && @x.to_i >=0 && @y.to_i >=0
      return "PLACE Succeeded"
    else
      return "Error, PLACE must be on grid"
    end
  end


  def left
    @x, @y, @direction = @direction - 1

    if (@direction < 0)
      @direction = @direction + 4
    end
  end


  def right
    @placed_on_grid = true
    @direction = @direction + 1
    if (@direction > 3)
      @direction = @direction - 4
    end
  end

#####Jarrod's helper methods
  def set_x_and_y arg
    @x, @y, @direction = arg.sub('PLACE ', '').split(',')


  end


  def what_cmd arg
    arg.split(' ').first
  end


end
