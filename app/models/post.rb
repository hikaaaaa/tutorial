class Post < ApplicationRecord
  mount_uploader :img, ImgUploader
  belongs_to :user, optional: true
  validates :title, presence: true
  validates :content, presence: true
  validates :img, presence: true
end
