class Article < ApplicationRecord
  belongs_to :student
  mount_uploader :image, ArticleImagesUploader
end
