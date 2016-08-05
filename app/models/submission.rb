class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :task
  mount_uploader :image_string, ImageStringUploader

end
