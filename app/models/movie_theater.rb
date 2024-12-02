class MovieTheater < ApplicationRecord
  validates :name, :city, presence: true
  has_many :rooms

  def full_capacity
    full_capacity = 0
    self.rooms.each do |room|
      full_capacity += room.capacity
    end
    full_capacity
  end

end
