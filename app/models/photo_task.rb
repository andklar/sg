class PhotoTask < Task
  validates :image_string, presence: true
end
