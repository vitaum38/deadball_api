class AtBat < ApplicationRecord
  TYPES = {
    '+d20' => [0, 1],
    '+d12' => [1, 2],
    '+d8' => [2, 3],
    '+d4' => [3, 3.5],
    '-d4' => [3.5, 4],
    '-d8' => [4, 5],
    '-d12' => [5, 6],
    '-d20' => [6, 7],
    '-20' => [7, 8],
    '-25' => [8, 9],
  }.with_indifferent_access

  validates :pitcher, :batter, :games, :half_inning, :a_team, :b__team, presence: true
  validates :balls, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 4 }
  validates :strikes, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 3 }
  validates :outcome, inclusion: { in: %w(K W HBP SB 1B 2B 3B HR E) }, allow_nil: true

  def self.pitcher_dies
    {
      '+d20' => [0, 1],
      '+d12' => [1, 2],
      '+d8' => [2, 3],
      '+d4' => [3, 3.5],
      '-d4' => [3.5, 4],
      '-d8' => [4, 5],
      '-d12' => [5, 6],
      '-d20' => [6, 7],
      '-20' => [7, 8],
      '-25' => [8, 9],
    }.with_indifferent_access
  end

  def self.out_table
    {
      'K' => 1..3,
      'G-3' => [4],
      '4-3' => [5],
      '5-3' => [6],
      '6-3' => [7],
      'F-7' => [8],
      'F-8' => [9],
      'F-9' => [10],
    }.with_indifferent_access
  end

  def self.hit_table
    {
      'Single' => 1..12,
      'Double' => 13..17,
      'Triple' => [18],
      'Home Run' => [19, 20]
    }
  end
end
