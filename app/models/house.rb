class House < ApplicationRecord
  belongs_to :manager

  mount_uploader :image, ImageUploader
  serialize :image, JSON
end
