class Faculty < ApplicationRecord
  has_many :student
  has_one :marketing_coordinator
end
