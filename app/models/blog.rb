class Blog < ApplicationRecord
  belongs_to :student
  mount_uploader :image, BlogImagesUploader
  mount_uploader :file, FileUploader

  # validates :checked_rule, inclusion: { in: [ checked_rule ] }
  validates_acceptance_of :checked_rule, accept: [true]
  validate :expiration_date_cannot_be_in_the_past
  def expiration_date_cannot_be_in_the_past
    # if final_date.present? && final_date < Date.today
    #   errors.add(:final_date, "can't be in the past")
    # end
  end  
end
