class Team < ApplicationRecord
  validates :name, :acronym, presence: true
  validates :acronym, length: { is: 3 }

  def mock_lineup
    super || []
  end
end
