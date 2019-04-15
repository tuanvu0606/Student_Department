class Article < ApplicationRecord
  belongs_to :student
  mount_uploader :image, ArticleImagesUploader
  mount_uploader :file, FileUploader
end
