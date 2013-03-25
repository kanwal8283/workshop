class Robot
def initialize
@initialPosition = :INACTIVE
@DIRECTION = Array["NORTH","EAST","SOUTH", "WEST"]
@firstMove = true
end

def place (x,y,f)
if(@DIRECTION.include?(f))
@f= @DIRECTION.index(f).to_i
else
puts "Wrong direction"
return
end

 # robot first placement has to be on the table

 if(outOfTable(@x,@y))
 @initialPosition = :INACTIVE
 else 
 @initialPosition = :ACTIVE
 end
 
 @firstPlacement = false
 
if(@firstMove && outOfTable(x,y))
puts "Initial move has to be on the table"
return
end
@x = x.to_i
@y = y.to_i

end




def move
if(@initialPosition == :INACTIVE)
puts "RObot is not active yet"
return
end

resultArray = moveTheRobot(@x,@y,@f)


if(resultArray.count == 0)
puts "Robot cannot move further."
else
@x = resultArray['x']
@y = resultArray['y'] 
end

end

def left
if(@initialPosition == :INACTIVE)
puts "RObot is not active yet"
return
end
@f = @f - 1;
if(@f < 0)
@f = @f + 4;
end
end

def right
if(@initialPosition == :INACTIVE)
puts "RObot is not active yet"
return
end
@f = @f + 1;
if(@f > 3)
@f = @f - 4;
end
end


def report
if(@initialPosition == :INACTIVE)
puts "Robot is not active yet"
return
end
puts  "RObot Location: #{@x},#{@y},#{@DIRECTION[@f]}"
end

def outOfTable(x,y)
x = x.to_i
y = y.to_i

if(x > 5 || x < 0 || y > 5 || y < 0)
return true
else
return false
end
end

def moveTheRobot(x,y,f)

case f
     when 0
y+=1
     when 1
x+=1
     when 2
y-=1
      when 3
x-=1
end


if(outOfTable(x,y)) 
return {}
else
return {'x'=>x,'y'=>y}
end	

end


def robotCommand(line)
array = line.split(" ")

if (array.count == 0)
return
end
command = array[0]

case command
when "PLACE"

if (array.count == 2 )
args = array[1].split(",")
if (args.count == 3 )
#do place
place(args[0],args[1],args[2])
end
else
puts "Invald Arguments"
end




when "LEFT"
left

when "RIGHT"
right

when "MOVE"
move

when "REPORT"
report
else
puts "Invalid Command"
end


end
end




r= Robot.new
puts "Ready to move"

while line= gets.chomp
r.robotCommand(line)
end
