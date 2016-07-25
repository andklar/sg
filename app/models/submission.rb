class Submission < ApplicationRecord
	belongs_to :user
	belongs_to :task

	validates :answer, presence: true

end