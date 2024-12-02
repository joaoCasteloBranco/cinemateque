class MovieTheater < ApplicationRecord
  validates :name, :city, presence: true
  has_many :rooms

  def full_capacity
    
  end

end
