class Paper < ActiveRecord::Base
  belongs_to :author, :foreign_key => :author_id
  has_many :authors

  validates :title, presence: true
  validates :venue, presence: true
end
