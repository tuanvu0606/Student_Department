class InventoryItem < ApplicationRecord
  before_destroy :not_refereced_by_any_line_item
  belongs_to :user, optional: true
  belongs_to :inventory_item_categories, required: false
  belongs_to :inventory_models, required: false
  has_many :order_line_items
  has_many :specific_item
  mount_uploader :image, ImageUploader  # carrierwave support for our image column
  serialize :image, JSON # If you use SQLite, add this line.  

  #mount_uploader :image, ImageUploader
  #serialize :image, JSON # If you use SQLite, add this line

  validates :name, :description, :price, :inventory_model_id, :inventory_item_category_id, :image, presence: true
  #validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}
  #validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
  #validates :price, length: { maximum: 7 }

  #BRAND = %w{ Fender Gibson Epiphone ESP Martin Dean Taylor Jackson PRS  Ibanez Charvel Washburn }
  #FINISH = %w{ Black White Navy Blue Red Clear Satin Yellow Seafoam }
  #CONDITION = %w{ New Excellent Mint Used Fair Poor }

  private

  def not_refereced_by_any_line_item
    unless order_line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end

end
