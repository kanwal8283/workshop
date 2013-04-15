
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
