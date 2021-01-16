class AtBat::GameService
  def initialize(at_bat = nil, pitcher = nil, batter = nil)
    @at_bat = at_bat
    @pitcher = pitcher
    @batter = batter
  end

  def play
    @modified_swing_score = nil
    play_at_bat
  end

  def play_at_bat
    outcome = nil

    if hit?
      # Roll basic hit table
      # Roll defense if necessary
      roll = DiceRoller.new('+1d20').result[:result]
      puts 'Hit!'
      puts "Hit roll: #{roll}"

      outcome = AtBat.hit_table.find{ |k, v| v.include?(roll) }.first
    elsif walk?
      # Draw walk [Possible improvement since this relates to plate discipline]
      puts 'Walk'
      outcome = 'W'
    else
      # Roll out
      roll = DiceRoller.new('+1d10').result[:result]
      puts 'Out!'

      outcome = AtBat.out_table.find{ |k, v| v.include?(roll) }.first
    end
    puts modified_swing_score

    outcome
  end

  private

  attr_reader :pitcher, :batter, :at_bat

  def walk?
    modified_swing_score < (batter.rounded_avg + 0.05) ? true : false
  end

  def hit?
    modified_swing_score <= batter.rounded_avg ? true : false
  end

  def swing_score
    DiceRoller.new('+1d100').result[:result]
  end

  def pitching_score
    DiceRoller.new(pitcher_die).result[:result]
  end

  def modified_swing_score
    @modified_swing_score ||= (swing_score + pitching_score)/100.0
  end

  def pitcher_die
    # Move this logic to the Player model maybe?
    era = pitcher.era

    AtBat.pitcher_dies.find{ |k, v| era >= v.first && era < v.last }.first
  end
end