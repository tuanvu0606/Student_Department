class Student < ActiveRecord::Base
  # self.abstract_class = true
  belongs_to :user
  has_many :article
  belongs_to :faculty
end
