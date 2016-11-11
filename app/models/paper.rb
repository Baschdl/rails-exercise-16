class Paper < ActiveRecord::Base
  has_many :authorships
  has_many :authors, through: :authorships

  validates :title, presence: true
  validates :venue, presence: true
  validates :year, presence: true, numericality: {only_integer: true}

  def self.published_in(year)
    where('year = ?', year)
  end
end
