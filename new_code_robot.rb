  def command arg
    case arg
      when (what_cmd(arg) == 'PLACE')
        @placed_on_grid = true
        set_x_and_y arg
        error
        arg == "REPORT" && @placed_on_grid == true
        "#{@x},#{@y},#{@direction}"
      else
        "Error, first command must be PLACE"
    end

  end


 def left
    @placed_on_grid = true
    @direction = @direction - 1
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
