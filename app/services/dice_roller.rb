class DiceRoller
  def initialize(string)
    # should extract reading logic to another class?
    @dice_array = string.split('|')
    @rolls = []
  end

  def result(print_result = false)
    @rolls = []
    #res = roll_dice(@dice_array.first)

    #return res if @dice_array.size == 1

    res = 0

    #@dice_array[1..-1].each do |com|
    @dice_array.each do |com|
      com.prepend('+') if !(['+', '-'].include?(com[0]))
      operator = com[0]
      roll = roll_dice(com[1..-1])

      res = res.send(operator, roll)
    end

    { result: res, rolls: rolls }
  end

  private

  attr_reader :rolls

  def roll_dice(command)
    data = command.split('d')
    dice_number = data.first
    dice_data = data.last.split(/(\+|-)/)
    dice_range = dice_data.first
    mods = (dice_data - [dice_range]).join

    global_die(dice_number, dice_range, mods)
  end

  def global_die(dice_number, dice_range, mods)
    # should this be in its own class, maybe treating d10 rolls?
    result = 0

    dice_number.to_i.times do
      roll = rand(1..dice_range.to_i)
      rolls.push(roll)

      result += roll
    end

    rolls.push(mods)

    mods ? result + mods.to_i : result
  end
end