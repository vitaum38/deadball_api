class Player < ApplicationRecord
  validates :name, :shirt_name, :base_avg, :era, :fielding, :main_hand,
    :position, presence: true
  validates :name, :shirt_name, uniqueness: true
  validates :shirt_name, length: { maximum: 10 }
  validates :base_avg, :fielding, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
  validates :era, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 20 }
  validates :main_hand, inclusion: { in: %w(L R) }
  validates :position, inclusion: { in: %w(P RP CP C 1B 2B 3B SS LF CF RF) }

  def rounded_avg
    base_avg.round(2)
  end
end
