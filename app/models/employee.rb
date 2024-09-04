class Employee < ApplicationRecord

  before_save :set_retire_year

  belongs_to :department

  validates :name, presence: true
  validates :dob, presence: true

  def set_retire_year
    age = DateTime.now.year - self.dob.year
    self.retire_year = (60 - age) + DateTime.now.year
  end
end
