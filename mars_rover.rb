class Rover
  attr_accessor :name

  def initialize(position, direction) #position [0, 0], direction "N"
    @position = position
    @direction = direction
    # @instruction = instruction
  end

  def move(instruction)
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
    # p "New position is [#{@position[0]}, #{@position[1]}]"
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
      @direction = "N"
    elsif ( @direction == "S" ) && ( instruction == "L" )
      @direction = "E"
    elsif ( @direction == "W" ) && ( instruction == "L" )
      @direction = "S"

    end
  end

  def read_instruction(instruction)
    instruction_list = instruction.split("")

    instruction_list.each do |element|
      if ( element == "R" ) || ( element == "L" )
        turn(element)
      elsif  element == "M"
        move(element)
      end

    end

  end



end
