class Robot
@x
@y
@f
@initialPosition
@direction
@firstMove

def initialize
@initialPosition = :INACTIVE
@direction = Array["NORTH","SOUTH","EAST", "WEST"]
@firstMove = true
end

def place (x,y,f)
if(@direction.include?(f))
@f= @direction.index(f).to_i
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
 
if(@firstMove && outOfTable(x,y))
puts "Initial move has to be on the table"
return
end
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

def move
if(@initialPosition == :INACTIVE)
puts "RObot is not active yet"
return
end
end

def left
if(@initialPosition == :INACTIVE)
puts "RObot is not active yet"
return
end
end

def right
if(@initialPosition == :INACTIVE)
puts "RObot is not active yet"
return
end
end


def report
if(@initialPosition == :INACTIVE)
puts "Robot is not active yet"
return
end
puts  "RObot Location: #{@x},#{@y},#{@direction[@f]}"
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

