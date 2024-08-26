class Employee < ApplicationRecord

  # validates :age, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 60}
  validates :age, numericality: {message: "%{value} seems wrong" }
  before_save :set_retire_year

  belongs_to :department


  def set_retire_year
    p "set retire year"
    self.retire_year = (60 - age) + DateTime.now.year
  end
end
