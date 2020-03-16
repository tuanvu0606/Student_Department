class Student < ActiveRecord::Base
  # self.abstract_class = true
  belongs_to :user
  has_many :blog
  belongs_to :faculty
  belongs_to :tutor
  # validates :tutor, :allow_nil => true
  validates :tutor, presence: true
  validates :user, uniqueness: true
end
