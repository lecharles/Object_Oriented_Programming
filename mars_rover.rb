class Rover
  attr_accessor :name

  def initialize(position, direction)
    @position = position
    @direction = direction
    # @instruction = instruction
  end

  def read_instruction(instruction) # for now 1 instruction example: M
    p instruction
  end

  def move(instruction) # if instruction is M
    if @direction == "N"
      new_position = @position[1] += 1
    elsif @direction == "E"
      new_position = @position[0] += 1
    elsif @direction == "S"
      new_position = @position[1] -= 1
    elsif @direction == "W"
      new_position = @position[0] -= 1
    # else p "instruction error"
    end
    p "New position is [#{@position[0]}, #{@position[1]}]"
  end

  def turn(instruction)
    if ( @direction == "N" ) && ( instruction == "R" )
      @direction = "E"
    elsif ( @direction == "E" ) && ( instruction == "R" )
      @direction = "S"
    elsif ( @direction == "S" ) && ( instruction == "R" )
      @direction = "W"
    elsif ( @direction == "W" ) && ( instruction == "R" )
      @direction = "N"

    elsif ( @direction == "N" ) && ( instruction == "L" )
      @direction = "W"
    elsif ( @direction == "E" ) && ( instruction == "L" )
      @direction = "S"
    elsif ( @direction == "S" ) && ( instruction == "L" )
      @direction = "E"
    elsif ( @direction == "W" ) && ( instruction == "L" )
      @direction = "N"
      
    end
  end



end
