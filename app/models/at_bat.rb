class AtBat < ApplicationRecord
  validates :pitcher, :batter, :games, :half_inning, :a_team, :b__team, presence: true
  validates :balls, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 4 }
  validates :strikes, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 3 }
  validates :outcome, inclusion: { in: %w(K W HBP SB 1B 2B 3B HR E) }, allow_nil: true
end
