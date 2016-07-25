class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :task
  mount_uploader :image_string, ImageStringUploader # Tells rails to use this uploader for this model.
end
